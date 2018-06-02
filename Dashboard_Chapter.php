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
		        <th> </th>
		      </tr>
		    </thead>
			<?php
				
				$cate_id = $_SESSION['Scate_id'];
				
				$sql = "select * from chapter where categoryId=".$cate_id;
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
						<td><form action="update_chapter.php?chap_id=<?php echo $row['id'];?>&do=remove" method="POST"><button type="submit" class="btn btn-danger">Remove Chapter</button></form></td>
						<td><form action="loading_video.php?chap_id=<?php echo $row['id'];?>" method="POST"><button type="submit" class="btn btn-info">Add to Chapter</button></form></td>
						</tr> 
					<?php 
					$count++;
					}
				}
				
			?>
			
		</table>
		
	</div>
	<div class="col-lg-4">
		<H3>Add New Chapter...</H3>
		<form class="add" action="update_chapter.php?do=add&cate_id=<?php echo $cate_id;?>" method="POST">
			<input type="text" class="form-control" name="name" placeholder="Name" required="required" /><br/>
			<input type="submit" name="submit" value="Add Detail" class="form-control" style="background-color: #5bc0de; color: #FFF">
		</form>
	</div>
	</div>
</div>
</body>
</html>

