<?php

class Msg
{
	
	static private $msg_path = LOG_PATH;
	static private $msg_file = MSG_FILE;
	static private $new_msg_file; 


	static public function write_msg($msg){
		if(self::check_file_status()){
			$msg = str_replace('\/','/',json_encode($msg));
			if(!(file_put_contents(self::$msg_file, $msg))){
				die('Could not write to <em><b>SITE ROOT/logs/msg.json</b></em>');
			}
		}else{
			die('Could not open <em><b>SITE ROOT/logs/msg.json</b></em> file for writing');
		}
	}

	static public function display_msg(){
		if(self::check_file_status()){
			return @file_get_contents(self::$msg_file);
		}
	}

	private function check_file_status(){
		if(!file_exists(self::$msg_file)){
			die('Create a <em><b>msg.json</b></em> file here <em><b>SITE ROOT/logs/</b></em>');
			return false;
		}
		if(!is_writable(self::$msg_file)){
			die('Give write permission to <em><b>SITE ROOT/logs/msg.json</b></em>');
			return false;
		}
		if(!is_readable(self::$msg_path)){
			die('Give read permission to <em><b>SITE ROOT/logs/msg.json</b></em>');
			return false;
		}
		return true;
	}
}
