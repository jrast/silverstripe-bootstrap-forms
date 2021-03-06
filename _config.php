<?php

/**
 * Decorates all of the FormField subclasses that get special
 * treatment from Bootstrap
 */

$dir = basename(dirname(__FILE__));
if($dir != "bootstrap_forms") {
	user_error("The bootstrap_forms module must be in a directory named 'bootstrap_forms'",E_USER_ERROR);
}
if(!class_exists("GridField")) {
	user_error("The bootstrap_forms module requires SilverStripe 3.0 or greater.", E_USER_ERROR);
}
