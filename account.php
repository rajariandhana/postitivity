<?php 
session_start();

	include("connection.php");
	include("functions.php");
    
	$user_data = check_login($con);
    function DeleteUser($userId)
    {
        $dbhost = "localhost";
        $dbuser = "id21438956_judito";
        $dbpass = "Jeketi_48";
        $dbname = "id21438956_twit";
    
        $conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
            if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
            $sql = "DELETE FROM user WHERE ID = '$userId'";
        $stmt = $conn->prepare($sql);
    
        if ($stmt === false) {
            die("Error: " . $conn->error);
        }
    
        // $stmt->bind_param("i", $userId);
    
        if ($stmt->execute() === TRUE) {
            // echo "User deleted successfully!";
        } else {
            // echo "Error deleting user: " . $conn->error;
        }
    
        // Close the database connection
        $stmt->close();
        $conn->close();
        header("Location: index.php");
    }
    
    if($_SERVER['REQUEST_METHOD'] == "POST")
	{
	    if (isset($_POST['logout']))
    	{
    	    include("logout.php");
    	    
    	}
    	if (isset($_POST['delete']))
    	{
    	    $todel = $_SESSION['ID'];
            DeleteUser($todel);
    	}
		//something was posted
		$newusername = $_POST['newusername'];
		$newpassword = $_POST['newpassword'];
        if(!empty($newusername))
        {
            $query = "UPDATE user SET name = '$newusername' WHERE ID = '{$user_data['ID']}'";
            $result = mysqli_query($con, $query);
        }
        if(!empty($newpassword))
        {
            $query = "UPDATE user SET pass = '$newpassword' WHERE ID = '{$user_data['ID']}'";
            $result = mysqli_query($con, $query);
        }
        // header("Location: index.php");
	}
    
    
	
	
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content= "IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Account</title>
	<link rel="stylesheet" href="template.css">
    <link rel="stylesheet" href="account.css">
</head>
<body>
    <?php
        GenerateNavBar($user_data);
    ?>
    <form method="post" class="accountcontainer">
        <div class="edit">
            <div>
    			<input id="text-change" type="text" name="newusername" placeholder="new username (max 20 characters)" maxlength="20">
    			<input id="button-change" type="submit" value="Change username">
    		</div>
    		<div>
    			<input id="text-change" type="password" name="newpassword" placeholder="new password (max 20 characters)" maxlength="30">
    			<input id="button-change" type="submit" value="Change password">
    		</div>
    	</div>
		<div class="red">
			<input id="button-red" type="submit" name="logout" value="LOGOUT">
		    <input id="button-red" type="submit" name="delete" value="DELETE ACCOUNT">
		</div>
    </form>
</body>
</html>