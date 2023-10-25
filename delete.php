<?php
function DeleteUser($userId)
{
$dbhost = "localhost";
$dbuser = "id21438956_judito";
$dbpass = "Jeketi_48";
$dbname = "id21438956_twit";

    // Create a database connection
    $conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Prepare and execute the SQL query to delete the user
    $sql = "DELETE FROM users WHERE id = ?";
    $stmt = $conn->prepare($sql);

    if ($stmt === false) {
        die("Error: " . $conn->error);
    }

    $stmt->bind_param("i", $userId); // 'i' represents an integer, adjust if your user ID is of a different type

    if ($stmt->execute() === TRUE) {
        echo "User deleted successfully!";
    } else {
        echo "Error deleting user: " . $conn->error;
    }

    // Close the database connection
    $stmt->close();
    $conn->close();
}

?>
