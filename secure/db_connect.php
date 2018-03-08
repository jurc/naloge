<?php
	
	$databaseserver = 'localhost';
	$databasename = '************';
	$databaseuser = '**************';
	$databasepass = '*******************';
	
	$cn = new PDO('mysql:host='.$databaseserver.';dbname='.$databasename.';charset=utf8', $databaseuser, $databasepass);

?>