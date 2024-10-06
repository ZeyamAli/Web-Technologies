<?php
include("connect.php");

// Retrieve and sanitize input data
$name = $conn->real_escape_string($_POST['name']);
$father_name = $conn->real_escape_string($_POST['father_name']);
$city = $conn->real_escape_string($_POST['city']);
$age = intval($_POST['age']); // Sanitize integer
$mobile_num = $conn->real_escape_string($_POST['mobile_num']);

// Construct the SQL query
$sql = "INSERT INTO Student (name, father_name, city, age, mobile_num) VALUES ('$name', '$father_name', '$city', $age, '$mobile_num')";

// Execute the query
if ($conn->query($sql) === TRUE) {
    header('Location: index.php'); // Redirect to the list of students
    exit();
} else {
    echo "Error: " . $conn->error;
}
