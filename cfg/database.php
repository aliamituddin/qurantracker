<?php

	$config = array(
		'server' => 'localhost',
		'username' => 'root',
		'password' => 'root',
		'database' => 'qurantracker',
	);
	
	ORM::configure('mysql:host='.$config['server'].';dbname='.$config['database']);
	ORM::configure('username', $config['username']);
	ORM::configure('password', $config['password']);

	define('REPORT_PATH', 'files/');
?>