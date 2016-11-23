<?php include('connection.php');

	$clientName = $_POST['name'];
	$date = $_POST['date'];
	$mechanic = $_POST['mechanic'];
    $address = $_POST['address'];
    $license = $_POST['license'];
    $engine = $_POST['engine'];
    $phone = $_POST['phone'];
   $q1="SELECT COUNT(`mechanic`) AS `mechanic` FROM appointed WHERE `mechanic`='$mechanic' and `date`='$date'";
   $query_count = mysqli_query( $conn, $q1);
   $q2="SELECT COUNT(*) FROM appointed WHERE `client`='$clientName' and `date`='$date' and `car`='$engine'";
   $query_count2 = mysqli_query( $conn, $q2);
   //$count = mysqli_num_rows($query_count);
   
   while ($row = $query_count->fetch_assoc()) {
        $counter=$row['mechanic'];
    
    }
    while ($row = $query_count2->fetch_assoc()) {
        $counter2=$row['COUNT(*)'];
      
    } 
    
if($counter2<1 ) {
  if($counter <4) {
        $query = mysqli_query( $conn, "INSERT INTO `appointed` (`cell`,`client`, `date`, `mechanic`, `car`) VALUES ('$phone', '$clientName', '$date', '$mechanic', '$engine');");
      $query_2 = mysqli_query( $conn, "INSERT INTO `client` (`ClientName`,`ClientPhn`, `ClientAddress`, `ClientCarLicense`, `ClientCarEngine`) VALUES ('$clientName', '$phone', '$address', '$license', '$engine');");
      header("location: http://localhost/mechanics/successApp.php");
      }else {
      
      header("location: http://localhost/mechanics/failedApp.php");
  }
}else {
    header("location: http://localhost/mechanics/failedApp.php");
}
      

?>