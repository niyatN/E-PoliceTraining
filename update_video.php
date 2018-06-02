<?php
	$host = "localhost";
	$dbuser = "root";
	$pass = "";
	$dbname = "E_Police";
	$conn = mysqli_connect($host,$dbuser,$pass,$dbname);
	//echo $_GET['id'];
	if($_GET['do']=='remove'){
		$id = $_GET['vid_id'];
		$sql="DELETE FROM video WHERE id=".$id;
		$res = mysqli_query($conn,$sql);
		if(!$res){
		echo mysqli_error($conn);
		}
		else{
			header('Location:Dashboard_Video.php');
		}
	}
	elseif ($_GET['do']=='add') {
		# code...
		$name = $_POST['name'];
		$video_url = $_POST['videourl'];
		$chap_id = $_GET['chap_id'];
		$sql="INSERT INTO video( name, videourl,chapterid) VALUES ('$name','$video_url', '$chap_id')";
		$res = mysqli_query($conn,$sql);
		if(!$res){
		echo mysqli_error($conn);
		}
		else{
			header('Location:Dashboard_Video.php');
		}
	}
?>
