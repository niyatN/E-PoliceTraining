<?php
session_start();
	$host = "localhost";
	$dbuser = "root";
	$pass = "";
	$dbname = "E_Police";
	$conn = mysqli_connect($host,$dbuser,$pass,$dbname);
?>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Chapter</title>
<style type="text/css">
body{
	background-color: #d8f9ff;
}
.col-lg-4{
	margin-left: 20px;
}
h3{
	text-align: center;
	margin-top: 5px;
	padding-top: 10px;
	padding-bottom: 25px;
	background-color: rgba(255,255,255,0.5);
}
.add{
	padding: 20px;
	background-color: rgba(255,255,255,0.5);
}
tr{
	background-color: rgba(255,255,255,0.5);
}
</style>
</head>
<body>

<div class="cover">
	<nav class="navbar navbar-expand-sm bg-info navbar-dark" >
  		<a class="navbar-brand" href="#">
   			 <img src="logo.png" alt="logo" style="width:40px;">
  		</a>
  		<ul class="navbar-nav">
  			<li class="nav-item active">
      		<a class="nav-link" href="#"><h5>E Police</h5> </a>
    		</li>
    		<li class="nav-item active">
      		<a class="nav-link" href="Dashboard_Category.php">Category </a>
    		</li>
    		<li class="nav-item active">
      		<a class="nav-link" href="Dashboard_Chapter.php">Chapter </a>
    		</li>
  		</ul>
	</nav>
	<div class="row">
	<div class="col-lg-7">
	
		<table class="table table-hover" style="margin-top: 5px; margin-left: 10px;">
			<thead>
		      <tr class="table-info">
		        <th>S.No</th>
		        <th>Chapters</th>
		        <th> </th>
		        
		      </tr>
		    </thead>
			<?php
				
				$chap_id = $_SESSION['Schap_id'];
				
				$sql = "select * from video where chapterId=".$chap_id;
				$res = mysqli_query($conn,$sql);
				$count = 1;
				if(!$res){
					echo mysqli_error($conn);

				}
				else {
					# code...
					$rowcount=mysqli_num_rows($res);
					while($row = mysqli_fetch_array($res,MYSQLI_BOTH) and $rowcount>0){
					?>
						<tr >
						<td><?php echo $count; ?> </td>
						<td><?php echo $row['name']; ?> </td>
						<td><form action="update_video.php?vid_id=<?php echo $row['id'];?>&do=remove" method="POST"><button type="submit" class="btn btn-danger">Remove Video</button></form></td>
						
					<?php 
					$count++;
					}
				}
				
			?>
			
		</table>
		
	</div>
	<div class="col-lg-4">
		<H3>Add New Video...</H3>
		<form class="add" action="update_video.php?chap_id=<?php echo $chap_id;?>&do=add" method="POST">
			<input type="text" class="form-control" name="name" placeholder="Name" required="required" /><br/>
			<input type="text" class="form-control" name="videourl" placeholder="Video URL" required="required" /><br/>
			<input type="submit" name="submit" value="Add Detail" class="form-control" style="background-color: #5bc0de; color: #FFF">
		</form>
	</div>
	</div>
</div>
</body>
</html>

