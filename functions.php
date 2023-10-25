<?php

function check_login($con)
{
	if(isset($_SESSION['ID']))
	{
		$ID = $_SESSION['ID'];
		$query = "select * from user where ID = '$ID' limit 1";

		$result = mysqli_query($con,$query);
		if($result && mysqli_num_rows($result) > 0)
		{

			$user_data = mysqli_fetch_assoc($result);
			return $user_data;
		}
	}
	//redirect to login
	header("Location: login.php");
	die;

}
function DeleteAccount()
{
    // $ID = $_SESSION['ID'];
    // $query = "DELETE FROM user WHERE ID = '$ID'";
    // $result = mysqli_query($con,$query);
    // header("Location: login.php");
    // die;
    

    global $mysqli;
    $todel = $_SESSION['ID'];
    $sql = "DELETE FROM user WHERE ID = $todel";
    
    if ($mysqli->query($sql) === TRUE)
    {
        header("Location: login.php");
        die;
    }
}

// function random_num($length)
// {

// 	$text = "";
// 	if($length < 5)
// 	{
// 		$length = 5;
// 	}

// 	$len = rand(4,$length);

// 	for ($i=0; $i < $len; $i++) { 
// 		# code...

// 		$text .= rand(0,9);
// 	}

// 	return $text;
// }



function GenerateNavBar($user_data)
{
    $makePostLink = 'makepost.php';
    $indexLink = 'index.php';
    $postTitle = 'PostIt ivity';
    $accountLink = 'account.php';
    $username = $user_data['username'];
    echo '<div class="bar">';
    echo '<a id="makepost" href="' . $makePostLink . '">+ Make post</a>';
    echo '<a id="logo" href="' . $indexLink . '">' . $postTitle . '</a>';
    echo '<a id="account" href="' . $accountLink . '">' . $username . '</a>';
    echo '</div>';
    
}

function GenerateLogoMid()
{
	echo '<div class="logsignwebname">';
    echo '<a id="logo" href="index.php">PostIt ivity</a>';
    echo '</div>';
}

function Pride($num)
{
    $color="";
    $num%=6;
    if($num == 1) {$color="#e50000";}
    else if($num == 2) {$color="#ff8d00";}
    else if($num == 3) {$color="#ffee00";}
    else if($num == 4) {$color="#028121";}
    else if($num == 5) {$color="#004cff";}
    else {$color="#760088";}
    echo $color;
    return $color;
}

function GetColor()
{
    $color="";
    $num = rand(1,11);
    // if($num == 1) {$color="#AED143";}
    // else if($num == 2) {$color="#FBD249";}
    // else if($num == 3) {$color="#F49F3F";}
    // else if($num == 4) {$color="#D35595";}
    // else if($num == 5) {$color="#51BCB3";}
    if($num == 1) {$color="#feacd4";}
    else if($num == 2) {$color="#ff84d5";}
    else if($num == 3) {$color="#acec60";}
    else if($num == 4) {$color="#98f649";}
    else if($num == 5) {$color="#fbb749";}
    else if($num == 6) {$color="#ff8c4b";}
    else if($num == 7) {$color="#faea76";}
    else if($num == 8) {$color="#ffea3b";}
    else if($num == 9) {$color="#95d6f1";}
    else if($num == 10) {$color="#95d6f1";}
    else if($num == 11) {$color="#95d6f1";}
    else {$color="#000000";}
    return $color;
}

function GetFont()
{
    $font="";
    $num = rand(1,3);
    if($num == 1) {$font="Give You Glory";}
    else if($num == 2) {$font="Playpen Sans";}
    else if($num == 3) {$font="Indie Flower";}
    else {$font="Montserrat";}
    return $font;
}

function ChangeAllValueOnAttribute()
{
    $query1 = "SELECT * FROM post";
    $res1 = $con->query($query1);
    if ($res1->num_rows > 0)
    {
        while ($row = $res1->fetch_assoc())
        {
            $rowIdToUpdate = $row["ID"];
            $toedit = 'color';
            $newdata = GetColor();
            $query2 = "UPDATE post SET '$toedit' = '$newdata' WHERE ID = $rowIdToUpdate";
            $res2 = $con->query($query2);
        }
    }
}
?>
