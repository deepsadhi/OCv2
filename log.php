<?php

header('content-type: text/plain; charset=utf-8');

defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);
require_once('lib'.DS.'init.inc.php');

if(isset($_GET['key'])){
	$purifier = new HTMLPurifier();
	$key = $purifier->purify($_GET['key']);
	if(Log::check_password($key)){
		if(isset($_GET['name'])){
			$name = $purifier->purify($_GET['name']);
			if(!empty($name)){
				echo "Save this file and mail your team members\n";
				Log::display_log();
				Log::clear();
				Log::log_action($name, 'Cleared log');
			}else{
				die('Name missing');
			}
		}else{
				die('Name missing');
		}
	}else{
		hack_attempt();
	}
}else{
	hack_attempt();
}
