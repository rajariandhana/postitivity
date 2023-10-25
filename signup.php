<?php 
session_start();
$message = "";
	include("connection.php");
	include("functions.php");

	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
        //$name = $_POST['name'];
		$username = $_POST['username'];
		$password = $_POST['password'];
        // !empty($name) && 
		if(!empty($username) && !empty($password))
		{
			$query1 = "SELECT * FROM user WHERE username = '$username'";
			$result1 = $con->query($query1);

			if($result1->num_rows > 0)
			{
				// echo "<script> alert('Email is already taken'); </script>";
				// echo "<p>Email is already taken!</p>";
				$message = "username is already taken!";
			}
			else
			{
				//save to database
				$query2 = "insert into user (username,pass) values ('$username','$password')";
				mysqli_query($con, $query2);
				header("Location: login.php");
				die;
			}
		}else
		{
			// echo "<script> alert('Please enter valid information'); </script>";
			// echo "<p>Please enter valid information!</p>";
			$message = "Please enter valid information!";
		}
	}
?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content= "IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Signup</title>
	<link rel="stylesheet" href="template.css">
	<link rel="stylesheet" href="logsign.css">
</head>
<body>
    <?php
	GenerateLogoMid();
	?>
	<div class="logsignform">
		<h2>Create account</h2>
		<?php if(!empty($message)) {echo "<div id='alert'>$message</div>";}?>
		<form method="post">
			<!--<input id="text" type="text" name="name" placeholder="name">-->
			<input id="text" type="text" name="username" placeholder="username (max 20 characters)" maxlength="20">
			<input id="text" type="password" name="password" placeholder="password (max 20 characters)" maxlength="20">
			<input id="button" type="submit" value="Sign Up">
			<a ide="other" href="login.php">Login instead</a>
		</form>
	</div>
</body>
</html>