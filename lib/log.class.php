<?php

class Log
{
	
	static private $log_path = LOG_PATH;
	static private $log_file = LOG_FILE;
	static private $new_log_file; 

	static public function log_action($action, $message=""){
		if(self::log_directory()){
			if($handle = fopen(self::$log_file, 'a')){
				$timestamp = strftime("%Y-%m-%d %H:%M:%S", time());
				$content = "{$timestamp} | {$action}: {$message}\n";
				fwrite($handle, $content);
				fclose($handle);
			}else{
				die('Could not open <em><b>SITE ROOT/logs/log.txt</b></em> file for writing');
			}
		}
	}
	
	private function log_directory(){
		if(!file_exists(self::$log_path)){
			die('Create a <em><b>logs</b></em> directory here <em><b>SITE ROOT/</b></em>');
			return false;
		}
		if(!is_writable(self::$log_path)){
			die('Give write permission to <em><b>SITE ROOT/logs/</b></em>');
			return false;
		}
		return true;
	}
	
	static public function clear(){
		if(self::log_directory()){
			if(!file_exists(self::$log_file)){
				die('<em><b>SITE ROOT/logs/log.txt</b></em> file missing');
			}else{
				file_put_contents(self::$log_file, '');
			}
		}else{
			die('Could not open <em><b>SITE ROOT/logs/log.txt</b></em> file for writing');
		}
	}
	
	static public function display_log(){
		echo file_get_contents(self::$log_file);
	}
	
	static public function check_password($password){
		$hash = '$2a$10$dQf8BXBOmBs.RCKb7oVwqebsPxQujq0T/44lWTlbMrbiKsz4XkCHC';
		if(crypt($password, $hash) == $hash){
			return true;
		}else{
			return false;
		}
	}
}
