<?php
require("../includes/database_connect.php");

$name = $_POST['name'];
$email = $_POST['email'];
$Phone_no=$_POST['Phone_no'];
$password = $_POST['psw'];

$sql = "SELECT * FROM users WHERE email='$email'";
$result = mysqli_query($conn, $sql);
if (!$result) {
	echo "Something went wrong!";
	exit;
}

$row_count = mysqli_num_rows($result);
if ($row_count != 0) {
	echo "This email id is already registered with us!";
	exit;
}

$sql = "INSERT INTO users (email, password1, u_name, Phone_no) VALUES ('$email', '$password', '$name','$Phone_no')";
$result = mysqli_query($conn, $sql);
if (!$result) {
	echo "Something went wrong!";
	exit;
}

echo "Your account has been created successfully!";
?>

Click <a href="../index.php">here</a> to continue.
<?php
mysqli_close($conn);
?>