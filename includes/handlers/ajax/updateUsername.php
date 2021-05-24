<?php

include("../../config.php");

if (!isset($_POST['username'])) {
    echo "ERROR: Could not set username";
    exit();
}

if (isset($_POST['username']) && $_POST['username'] !="") {

    $username = $_POST['username'];
	   

	if (strlen($username) > 25 || strlen($username) < 4) {
	echo "Your username must be between 4 and 25 characters";
	exit();
	}

	$usernameCheck = mysqli_query($con, "SELECT * FROM users WHERE username ='$username' AND username != '$username'");

	if (mysqli_num_rows($usernameCheck) > 0) {
	    echo "Username is already taken";
	    exit();
	}

	$updateQuery = mysqli_query($con,"UPDATE users SET username = '$username' WHERE username = '$username'");
	echo "Update succesfull";
}
else {
	    echo "You must provide an username";
	}

?>
