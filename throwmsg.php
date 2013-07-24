<?php

defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);
require_once('lib'.DS.'init.inc.php');

if(isset($_GET['key'])){
	$purifier = new HTMLPurifier();
	$key = $purifier->purify($_GET['key']);
	if(Log::check_password($key)){
		if(isset($_GET['name'])){
			$name = $purifier->purify($_GET['name']);
			if(!empty($name)){
				if(isset($_POST['submit'])){
					$msg = $purifier->purify($_POST['msg']);
					Msg::write_msg($msg);
					Log::log_action($name, 'wrote message');
				}
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

echo Msg::display_msg();

?>
<hr/>
<form method="post" action="<?php echo $_SERVER['PHP_SELF'].'?key='.$key.'&name='.$name; ?>">
	<textarea name="msg" style="width:50%; height:20%"></textarea><br/>
	<input type="submit" name="submit" value="Submit">
</form>
