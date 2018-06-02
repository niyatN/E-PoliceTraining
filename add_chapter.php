<?php
session_start();
	$host = "localhost";
	$dbuser = "root";
	$pass = "";
	$dbname = "E_Police";
	$conn = mysqli_connect($host,$dbuser,$pass,$dbname);
	
	$id = $_GET['id'];
	echo $id;
?>
