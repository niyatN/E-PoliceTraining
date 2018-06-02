<?php
session_start();
$_SESSION['Scate_id'] = $_GET['cate_id'];
header('Location:Dashboard_Chapter.php');
?>