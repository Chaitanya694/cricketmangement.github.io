<?php
session_start();
require("../includes/database_connect.php");

$email = $_POST['email'];
$password = $_POST['password'];


$sql = "SELECT * FROM admin WHERE email='$email' AND password='$password'";
$result = mysqli_query($conn, $sql);
if (!$result) {
    echo "Something went wrong!";
	exit;
}

$row_count = mysqli_num_rows($result);
if ($row_count == 0) {
    echo "Login failed! Invalid email or password.";
	exit;
}

$row = mysqli_fetch_assoc($result);
$_SESSION['id']=$row['Admin_id'];
$_SESSION['name'] = $row['Name'];
$_SESSION['email'] = $row['email'];

header("location: ../admin.php");
mysqli_close($conn);
?>