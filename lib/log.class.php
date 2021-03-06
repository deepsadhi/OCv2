<?php

class Log
{
	
	static private $log_path = LOG_PATH;
	static private $log_file = LOG_FILE;
	static private $new_log_file; 

	static public function log_action($action, $message=""){
		if(self::check_file_status()){
			if(@$handle = fopen(self::$log_file, 'a')){
				$timestamp = strftime("%Y-%m-%d %H:%M:%S", time());
				$content = "{$timestamp} | {$action}: {$message}\n";
				if(!(@fwrite($handle, $content))){
					die('Could not write to SITE ROOT/logs/log.txt');
				}
				fclose($handle);
			}else{
				die('Could not open SITE ROOT/logs/log.txt file for writing');
			}
		}
	}
	
	static private function check_file_status(){
		if(!file_exists(self::$log_file)){
			die('Create a log.txt file here SITE ROOT/logs/');
			return false;
		}
		if(!is_writable(self::$log_file)){
			die('Give write permission to SITE ROOT/logs/log.txt');
			return false;
		}
		if(!is_readable(self::$log_path)){
			die('Give read permission to SITE ROOT/logs/log.txt');
			return false;
		}
		return true;
	}
	
	static public function clear(){
		if(self::check_file_status()){
			file_put_contents(self::$log_file, '');
		}else{
			die('Could not open SITE ROOT/logs/log.txt file for writing');
		}
	}
	
	static public function display_log(){
		if(self::check_file_status()){
			echo @file_get_contents(self::$log_file);
		}else{
			die('Could not read from file SITE ROOT/logs/log.txt');
		}
	}
	
	static public function check_password($password){
		$hash = 'f285975fd2ee16d3e812db55c0f1d985';
		if(md5($password) == $hash){
			return true;
		}else{
			return false;
		}
	}
}
