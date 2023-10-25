<?php 

session_start();
$message = "";
	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$username = $_POST['username'];
		$password = $_POST['password'];

		if(!empty($username) && !empty($password))
		{
			//read from database
			$query = "select * from user where username = '$username' limit 1";
			$result = mysqli_query($con, $query);

			if($result)
			{
				if($result && mysqli_num_rows($result) > 0)
				{
					$user_data = mysqli_fetch_assoc($result);
					if($user_data['pass'] == $password)
					{
						$_SESSION['ID'] = $user_data['ID'];
						header("Location: index.php");
						die;
					}
				}
			}
			
			$message = "wrong username or password!";
		}else
		{
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
	<title>Login</title>
	<link rel="stylesheet" href="template.css">
	<link rel="stylesheet" href="logsign.css">
</head>
<body>
	<?php
	GenerateLogoMid();
	?>
	<div class="logsignform">
		<h2>Welcome</h2>
		<?php if(!empty($message)) {echo "<div id='alert'>$message</div>";}?>
		<form method="post">
			<input id="text" type="text" name="username" placeholder="username" maxlength="20">
			<input id="text" type="password" name="password" placeholder="password" maxlength="20">
			<input id="button" type="submit" value="Login">
			<a id="other" href="signup.php">Create account</a>
		</form>
	</div>
</body>
</html>