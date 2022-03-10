<?php
	if(isset($_SESSION) == false){
		session_start();
	}
	$has_Session_DisplayName = isset($_SESSION["SEES_DISPLAYNAME"]);
	if($has_Session_DisplayName == true){
		$_SESSION["SEES_DISPLAYNAME"] = null;
		session_destroy();
	}
	$has_Session_DisplayName = isset($_COOKIE["COOKIE_DISPLAYNAME"]);
	if($has_Cookie_DisplayName == true){
		unset($_COOKIE["COOKIE_DISPLAYNAME"]);
		setcookie("COOKIE_DISPLAYNAME", null, -1);
	}
	header("Location: index.php")
?>