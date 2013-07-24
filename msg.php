<?php

header('content-type: application/json; charset=utf-8');

defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);
require_once('lib'.DS.'init.inc.php');

echo json_encode(Msg::display_msg());
?>
