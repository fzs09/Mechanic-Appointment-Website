<?php include('connection.php');

	$username = $_POST['name'];
	$password = $_POST['pass'];

	$query = mysqli_query($conn, "SELECT * FROM admin WHERE AdminName='$username' and AdminPassword='$password'");

	$count = mysqli_num_rows($query);

	

	if($count==1) {
			header("location: http://localhost/mechanics/admin.html");	
	} else {
		header("location: http://localhost/mechanics/loginPage.html");
	}

?>