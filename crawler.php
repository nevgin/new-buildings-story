﻿<?php
/**
 * Get and parse information from external websites. Started by cron every 15 minutes
 * PHP Version 5
 *
 * @category File
 * @package  Crawler
 * @author   Malitsky Alexander <a.malitsky@gmail.com>
 * @license  GNU GENERAL PUBLIC LICENSE
 *
 */
date_default_timezone_set("UTC");
$currHour = date("G"); $currMinute = date("m");
//if($currHour >= 21 OR $currHour < 03) { exit('MSS'); } //Moscow sometimes sleep, let's stop bothering
//usleep (mt_rand(0,600)*1000000);  //we don't need english courtesy to be just in time
$time_start = microtime(true);
error_reporting(E_ALL);
ob_start();
require_once "./crawler_lb.php";
require_once "./db.php";
require_once "./output.php";

$buildings = array(
	/*array (1, './examples/k1example_05022014.htm'),
	array (1, './examples/k1example_06022014.htm'),
	array (1, './examples/k1example_07022014.htm'),
	array (1, './examples/k1example_08022014.htm'),
	array (1, './examples/k1example_10022014.htm'),
	array (1, './examples/k1example_11022014.htm'),
	array (1, './examples/k1example_12022014.htm'),
	array (1, './examples/k1example_13022014.htm'),*/
	//array (1, './examples/k1example_14022014.htm'),
    //array (1, './examples/k1example_26022014.htm'),
    array (1, './examples/k1example_28022014.htm'),
	/*array (2, './examples/k2example_05022014.htm'),
	array (2, './examples/k2example_06022014.htm'),
	array (2, './examples/k2example_07022014.htm'),
	array (2, './examples/k2example_08022014.htm'),
	array (2, './examples/k2example_10022014.htm'),
	array (2, './examples/k2example_11022014.htm'),
	array (2, './examples/k2example_12022014.htm'),
    //array (2, './examples/k2example_13022014.htm'),*/
	//array (2, './examples/k2example_14022014.htm'),
    //array (2, './examples/k2example_26022014.htm'),
    array (2, './examples/k2example_28022014.htm'),
    //array (1, 'http://novokosino.ndv.ru/sale/?build=1708'),
	//array (2, 'http://novokosino.ndv.ru/sale/?build=1709'),
	//array (3, 'http://novokosino.ndv.ru/sale/?build=1710')
	);

$snaps = array(); $fromdb = array(); $fromWeb = array();
$db = mysqli_init();
$db -> options(MYSQLI_OPT_INT_AND_FLOAT_NATIVE, 1);
$db -> real_connect('localhost', 'app_crawler', 'Hja72_sdW', 'bcrawler');
if ($db -> connect_errno) {
	echo "<p>Error: Failed to connect to MySQL: (".$db->connect_errno.") ".$db->connect_error ."</p>\r\n"; }

for ($i = 0; $i < count($buildings); $i++){ crawlerR9mk($db, $buildings[$i][1], $buildings[$i][0]); }
$db -> close();
$output = ob_get_contents();
$ifErrors = stripos($output , 'error') || stripos($output, 'warning');
if($ifErrors !== false || ($currHour === 20 && $currMinute >= 30 && $currMinute < 45)){ sendMailNotice($output, $ifErrors); };
$time_end = microtime(true); echo "<p class='execTime'>Execution time: ".round($time_end - $time_start, 2)." s.</p>";
saveLog(ob_get_contents());
ob_end_flush();