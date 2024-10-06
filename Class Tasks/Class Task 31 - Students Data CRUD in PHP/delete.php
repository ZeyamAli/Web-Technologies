<?php
include("connect.php");

// Get student ID from query parameter
$id = intval($_GET['id']);

// Delete record
$sql = "DELETE FROM Student WHERE id = $id";

if ($conn->query($sql) === TRUE) {
    header('Location: index.php'); // Redirect to the list of students
    exit();
} else {
    echo "Error: " . $conn->error;
}
