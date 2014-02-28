<?php
/**
 * Unit tests for crawler library
 *
 * PHP version 5
 *
 * @category File
 * @package  Crawler_Library_Tests2
 * @author   Malitsky Alexander <a.malitsky@gmail.com>
 * @license  GNU GENERAL PUBLIC LICENSE
 */
require_once (dirname(__FILE__)."/../crawler_lb.php");

function fingerprints($table){
    /*$dom = new DOMDocument();
    $text = $table->C14N();
    $dom -> loadHTML(mb_convert_encoding($text,"HTML-ENTITIES","UTF-8"));
    $xpath = new DOMXPath($dom);
    echo $xpath -> evaluate('count(//table)')." ".$xpath -> evaluate('count(//tr)')." ".$xpath -> evaluate('count(//td)')." | ";*/
    $q['tables'] = $table -> getElementsByTagName('table') -> length;
    $q['tr'] = $table -> getElementsByTagName('tr') -> length;
    $q['td'] = $table -> getElementsByTagName('td') -> length;
    return array ($q['tables'], $q['tr'], $q['td']);
}

class r9mkLoadFileAndGetTableTest extends PHPUnit_Framework_TestCase{
    /**
     * @dataProvider linksProvider
     */
    public function testR9mkLoadFileAndGetTable($link, $refLink, $expFail = false){
        $ref = file_get_contents($refLink);
        $dom = new DOMDocument();
        $dom->preserveWhiteSpace = false;
        $ref = iconv("WINDOWS-1251", "UTF-8", $ref);
        libxml_use_internal_errors(true);
        $dom->loadHTML(mb_convert_encoding($ref,"HTML-ENTITIES","UTF-8"));
        libxml_use_internal_errors(false);
        $xpath = new DOMXPath($dom);
        //$table = $dom -> find('table.housemodbigs', 0);
        $expTable = $xpath -> query('//table[@class="housemodbigs"]') -> item(0);
        if($expFail){ $this->expectOutputRegex('/.*Error: File on address.*/'); }
        $table = r9mkLoadFileAndGetTable($link);
        if(!$expFail){ $this -> assertEquals(fingerprints($expTable), fingerprints($table)); }
        else{ $this -> assertEquals(null, $table); }
        return $table;
        }

    public function linksProvider(){
        return array(
            array(dirname(__FILE__).'/../examples/k1example_05022014.htm','./crawler/b1tableSample.html'),
            array(dirname(__FILE__).'/../examples/k2example_12022014.htm','./crawler/b2tableSample.html'),
            array(dirname(__FILE__).'/../examples/k1example_10022014.htm','./crawler/b1tableSample.html'),
            array(dirname(__FILE__).'/../examples/k2example_13022014.htm','./crawler/b2tableSample.html'),
            array(dirname(__FILE__).'/../examples/k2example_13022014.htm','./crawler/b2tableSample.html'),
            array('http://novokosino.ndv.ru/sale/?build=1709', './crawler/b2tableSample.html'),//check internal encoding
            array('http://novokosino.ndv.ru/sale/?build=1708', './crawler/b1tableSample.html'),
            //array('http://novokosino.ndv.ru/sale/?build=1710', './crawler/b3tableSample.html'),
            array('./crawler/dummy.html','./crawler/b1tableSample.html', 1),
            array(dirname(__FILE__).'none.htm','./crawler/b1tableSample.html', 1),
        );
    }

    /**
     * @dataProvider tablesProvider
     */
    public function testExtractFlatsOnSaleRmk9($tableObj, $bId, $expRes){
        if($expRes !== false){
            //print_r(array_udiff(extractFlatsOnSaleRmk9($tableObj, $bId), $expRes ,"compareFlatIds"));
            $this->assertEquals($expRes, count(extractFlatsOnSaleRmk9($tableObj, $bId)));}
        else{
            $this->expectOutputRegex('/.*Error:.*/');
            $this->assertSame(null, extractFlatsOnSaleRmk9($tableObj, $bId));
        }
        }

    public function tablesProvider(){
        $links = array(
            array(1, dirname(__FILE__).'/../examples/k1example_05022014.htm', 30),
            array(1, dirname(__FILE__).'/../examples/k1example_06022014.htm', 28),
            array(1, dirname(__FILE__).'/../examples/k1example_07022014.htm', 25),
            array(1, dirname(__FILE__).'/../examples/k1example_08022014.htm', 20),
            array(1, dirname(__FILE__).'/../examples/k1example_10022014.htm', 22),
            array(1, dirname(__FILE__).'/../examples/k1example_11022014.htm', 21),
            array(1, dirname(__FILE__).'/../examples/k1example_12022014.htm', 18),
            array(1, dirname(__FILE__).'/../examples/k1example_13022014.htm', 15),
            array(1, dirname(__FILE__).'/../examples/k1example_14022014.htm', 17),
            array(1, dirname(__FILE__).'/../examples/k1example_26022014.htm', 11),
            array(2, dirname(__FILE__).'/../examples/k2example_05022014.htm', 53),
            array(2, dirname(__FILE__).'/../examples/k2example_06022014.htm', 53),
            array(2, dirname(__FILE__).'/../examples/k2example_07022014.htm', 47),
            array(2, dirname(__FILE__).'/../examples/k2example_08022014.htm', 45),
            array(2, dirname(__FILE__).'/../examples/k2example_10022014.htm', 44),
            array(2, dirname(__FILE__).'/../examples/k2example_11022014.htm', 44),
            array(2, dirname(__FILE__).'/../examples/k2example_12022014.htm', 44),
            array(2, dirname(__FILE__).'/../examples/k2example_13022014.htm', 43),
            array(2, dirname(__FILE__).'/../examples/k2example_14022014.htm', 43),
            array(2, dirname(__FILE__).'/../examples/k2example_26022014.htm', 33),
            array(1, dirname(__FILE__).'/../examples/k2example_26022014.htm', false),
            array(1, dirname(__FILE__).'/../examples/b1empty_example.html', 0),
            array(2, dirname(__FILE__).'/../examples/b2empty_example.html', 0),
            array(1, dirname(__FILE__).'/../examples/b1brokenTable.html', false),
            array(2, dirname(__FILE__).'/../examples/b2unexpectedBid.html', false),
            array(1, dirname(__FILE__).'/../examples/b2empty_example.html', false),
            array(2, dirname(__FILE__).'/../examples/b2brokenTDs.html', 25)
        );
        $failObjs = array(
            //array(null, 1, false), array(null, 2, false)
        );
        $tableObjs = array_map(function($elem){
            return array(r9mkLoadFileAndGetTable($elem[1]), $elem[0], $elem[2]); }, $links);

        return array_merge($tableObjs, $failObjs);
    }
}