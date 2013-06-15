<?php

header('content-type: text/csv; charset=utf-8');

defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);
require_once('lib'.DS.'init.inc.php');


if(isset($_GET['getData'])){
	# get table name
	$purifier = new HTMLPurifier();
	$tblName = $purifier->purify($_GET['getData']);

	if($database->tableExists($tblName)){
		# extract data from table
		$sql = "SELECT date, price FROM {$tblName} ORDER BY date ASC";
		$database->sql($sql);
		$res = $database->getResult();
		$res = $database->getResult();
		list($tmp, $date, $tmp, $price) = $database->getResultKeys();
		$data = '"'.$date.'"';
		$data .= ',"'.$tblName.'_'.$price."\"\n";
		foreach($res as $op){
			$data .= strftime($op["date"]) .",". floatval($op["price"]) ."\n";
		}
		echo $data;
	}else{
		hack_attempt();
	}
}else{
	hack_attempt();
}
