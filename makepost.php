<?php
session_start();
include("connection.php");
include("functions.php");
$user_data = check_login($con);
if($_SERVER['REQUEST_METHOD'] == 'POST')
{
    $content = $_POST['content'];
    if(!empty($content))
    {
        //post insert ke db
        $color = getColor();
        $font = getFont();
        $query = "insert into post (content, user_ID, date, color, font) values ('$content', '{$_SESSION['ID']}', NOW(), '$color', '$font')";
        mysqli_query($con, $query);
        header("Location: index.php");
        die;
    }
    else
    {
        echo"please enter valid input";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content= "IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <!--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">-->
    <link rel="stylesheet" href="template.css">
    <link rel="stylesheet" href="makepost.css">
</head>
<body>
    <?php
        GenerateNavBar($user_data);
    ?>
    <form method="post" class="box">
        <textarea name="content" placeholder="your thoughts here" maxlength="100" ></textarea>
        <input id="button-post" type="submit" value="Post It!">
        <!--<a id="cancel" href="index.php">Cancel post</a>-->
    </form>       

</body>
</html>