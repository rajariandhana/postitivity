<?php 
session_start();

	include("connection.php");
	include("functions.php");

	$user_data = check_login($con);

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content= "IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home</title>
	<link rel="stylesheet" href="template.css">
	<link rel="stylesheet" href="index.css">
</head>
<body>
	<?php
        GenerateNavBar($user_data);
    ?>
	<?php
	    $sql = "SELECT post.ID AS post_id, post.content, post.color, post.font, user.ID AS user_id, user.username
        FROM post
        INNER JOIN user ON post.user_ID = user.ID
        ORDER BY post.date DESC";
        $result = $con->query($sql);
        echo "<div class='post-container'>";
        if ($result->num_rows > 0)
        {
            $ctr = 0;
            while (($row = $result->fetch_assoc()) && ($ctr<20))
            {
                echo "<div class='post' style='background: {$row["color"]};'>";
                echo "<p id='username'>" . $row["username"] . "</p>";
               echo "<p id='content' style='font-family: " . $row['font'] . ";'>" . $row['content'] . "</p>";


                echo "</div>";
                $ctr++;
            }
        }
        else {echo "<p>No posts found.</p>";}
        echo "</div>";
        
        // Randomize All Value On Attribute();
        // $counter=1;
        $r_query1 = "SELECT * FROM post";
        $r_res1 = $con->query($r_query1);
        // if ($r_res1->num_rows > 0)
        // {
        //     while ($r_row = $r_res1->fetch_assoc())
        //     {
        //         $rowIdToUpdate = $r_row["ID"];
        //         // $newdata = Pride($counter);
        //         $newdata = GetColor();
        //         $r_query2 = "UPDATE post SET color = '$newdata' WHERE ID = $rowIdToUpdate";
        //         $r_res2 = $con->query($r_query2);
        //         // $counter++;
        //     }
        // }
	?>
	
</body>
</html>