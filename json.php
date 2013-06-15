<?php

header('content-type: application/json; charset=utf-8');

defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);
require_once('lib'.DS.'init.inc.php');


if(isset($_GET['getData'])){
	# get table name
	$purifier = new HTMLPurifier();
	$tblName = $purifier->purify($_GET['getData']);

	if($database->tableExists($tblName)){
		# extract data from table
		$sql = "SELECT UNIX_TIMESTAMP(date) AS date, price FROM {$tblName} ORDER BY date ASC";
		$database->sql($sql);
		$res = $database->getResult();
		$data = array();
		foreach($res as $op){
			array_push($data, array(intval($op["date"])*1000, floatval($op["price"])));
		}
		# add one more data of today's date, to complete the graph
		array_push($data, array(time()*1000, floatval($op["price"])));
		echo json_encode($data);
	}else{
		hack_attempt();
	}
}else{
	hack_attempt();
}
