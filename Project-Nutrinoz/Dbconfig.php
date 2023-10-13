<?php

//Ways to connect to mySQL 
//MySQLi Extension
//PDO

$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'nutrinoz';

// $servername = 'localhost';
// $username = 'root';
// $password = '';

//creating a connection object
$con = mysqli_connect($dbhost, $dbuser, $dbpass);
$selectDb = mysqli_select_db($con, $dbname) or die('Could not connect to database:');
?>