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
				$database = new Database();
				$fields = array('np_kerosene', 'np_diesel', 'np_petrol', 'np_lpgas', 'in_kerosene', 'in_diesel', 'in_petrol');
				foreach($fields as $field){
					$sql = "SELECT date, price FROM {$field} ORDER BY date DESC LIMIT 1";
					$database->sql($sql);
					$res = $database->getResult();
					$op = array_shift($res);
					$$field = $op["price"];
					$date = $op["date"];
				}
				if(isset($_POST['submit'])){
					$inp_date = $purifier->purify($_POST['date']);
					foreach($fields as $field){
						$price = $purifier->purify($_POST[$field]);
						$data = array('date'=>$inp_date, 'price'=>$price);
						if(!($database->insert($field, $data))){
							die("{$field}: Could not insert record");
						}
					}
					Log::log_action($name, 'added record');
					redirect_to("record.php?key={$key}&name={$name}&entry=1");
				}
				if(isset($_GET['del'])){
					$del = $purifier->purify($_GET['del']);
					if($del == 1){
						foreach($fields as $field){
							if(!($database->delete($field, 'last row'))){
								die("{$field}: Could not delete record");
							}
						}
						Log::log_action($name, 'deleted record');
						redirect_to("record.php?key={$key}&name={$name}&del=0");
					}else if($del == 0){
						echo "Record deleted sucessfully";
					}
				}
				if(isset($_GET['entry'])){
					$entry = $purifier->purify($_GET['entry']);
					if($entry == 1){
						echo "Record entered sucessfully";
					}
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

?>
<hr/>
<style>
label{
	float: left;
	width: 150px;
}
a{
	text-decoration:none;
}
a:hover{
	text-decoration:underline;
}
</style>
<form method="post" action="<?php echo $_SERVER['PHP_SELF'].'?key='.$key.'&name='.$name; ?>">
	<div>
		<label>Date</label>
		<input type="text" name="date" value="<?php echo $date; ?>">
	</div>
	<div>
		<label>NP: Kerosene</label>
		<input type="text" name="np_kerosene" value="<?php echo $np_kerosene; ?>">
	</div>
	<div>
		<label>NP: Diesel</label>
		<input type="text" name="np_diesel" value="<?php echo $np_diesel; ?>">
	</div>
	<div>
		<label>NP: Petrol</label>
		<input type="text" name="np_petrol" value="<?php echo $np_petrol; ?>">
	</div>
	<div>
		<label>NP: LP Gas</label>
		<input type="text" name="np_lpgas" value="<?php echo $np_lpgas; ?>">
	</div>
	<div>
		<label>IN: Kerosene</label>
		<input type="text" name="in_kerosene" value="<?php echo $in_kerosene; ?>">
	</div>
	<div>
		<label>IN: Diesel</label>
		<input type="text" name="in_diesel" value="<?php echo $in_diesel; ?>">
	</div>
	<div>
		<label>IN: Petrol</label>
		<input type="text" name="in_petrol" value="<?php echo $in_petrol; ?>">
	</div>
	<div>
		<label>&nbsp;</label>
		<input type="submit" name="submit" value="Submit"> |
		<a href="<?php echo $_SERVER['PHP_SELF'].'?key='.$key.'&name='.$name; ?>&del=1">Delete</a>
	</div>
</form>
