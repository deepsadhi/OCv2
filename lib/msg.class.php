<?php

class Msg
{
	
	static private $msg_path = LOG_PATH;
	static private $msg_file = MSG_FILE;
	static private $new_msg_file; 


	static public function write_msg($msg){
		if(self::log_directory()){
			$msg = str_replace('\/','/',json_encode($msg));
			if(!(file_put_contents(self::$msg_file, $msg))){
				die('Could not write to <em><b>SITE ROOT/logs/msg.txt</b></em>');
			}
		}
	}

	static public function display_msg(){
		if(self::log_directory()){
			return file_get_contents(self::$msg_file);
		}
	}


	private function log_directory(){
		if(!file_exists(self::$msg_path)){
			die('Create a <em><b>logs</b></em> directory here <em><b>SITE ROOT/</b></em>');
			return false;
		}
		if(!is_writable(self::$msg_path)){
			die('Give write permission to <em><b>SITE ROOT/logs/</b></em>');
			return false;
		}
		return true;
	}
}
