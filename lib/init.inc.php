<?php

/**
 * Define the core paths
 * Loads necessary php files to initialize presentation2.0 (SITE) app
 */

error_reporting(E_ALL);


/**
 * DIRECTORY_SEPERATOR is a PHP pre defined constant
 * \ for Windows and / for UNIX a like systems
 */
defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);


/**
 * LIB directory for loading essential php files
 */
defined('LIB_PATH') ? null : define('LIB_PATH', __DIR__);


/**
 * Root directory of site 
 */
defined('SITE_ROOT') ? null : define('SITE_ROOT', dirname(LIB_PATH));


/**
 * Log directory of site
 * log.txt file in log folder
 */
defined('LOG_PATH') ? null : define('LOG_PATH', SITE_ROOT.DS.'logs');
defined('LOG_FILE') ? null : define('LOG_FILE', LOG_PATH.DS.'log.txt');


/**
 * Load basic functions
 */
require_once(LIB_PATH.DS.'functions.inc.php');


/**
 * Load core classses
 */ 
require_once(LIB_PATH.DS.'database.class.php');
require_once(LIB_PATH.DS.'log.class.php');


/**
 * Load HTML Purifier
 */
require_once(LIB_PATH.DS.'HTMLPurifier.standalone.php');


/**
 * Auotload class files
 */
spl_autoload_register('class_autoloader');
