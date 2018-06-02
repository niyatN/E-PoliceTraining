<?php
session_start();
$_SESSION['Schap_id'] = $_GET['chap_id'];
header('Location:Dashboard_Video.php');
?>