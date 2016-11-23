<?php include('connection.php');
    $clientName = $_POST['name'];
	$date = $_POST['date'];
	$mechanic = $_POST['mechanic'];
    $phone = $_POST['phone'];
    $car = $_POST['engine'];


 $query = mysqli_query( $conn, "DELETE FROM appointed WHERE client='$clientName' and cell='$phone' and date='$date' and car='$car' and mechanic='$mechanic'");
 //$count = mysqli_num_rows($query);

if($query){
    header("location: http://localhost/mechanics/successApp.php");
}else {
   header("location: http://localhost/mechanics/failedApp.php");
}
?>