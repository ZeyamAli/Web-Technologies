<?php
// Database connection settings
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydatabase1";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get form inputs
    $first_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $email = $_POST['email'];
    $tel_number = $_POST['tel_number'];
    $message = $_POST['message'];

    // Prepare and bind SQL query
    $stmt = $conn->prepare("INSERT INTO users (first_name, last_name, email, tel_number, message) VALUES (?, ?, ?, ?, ?)");
    if ($stmt === false) {
        die("Prepare failed: " . $conn->error);
    }

    $stmt->bind_param("sssss", $first_name, $last_name, $email, $tel_number, $message);

    // Execute the statement
    if ($stmt->execute()) {
        echo "Message sent successfully!";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close statement and connection
    $stmt->close();
    $conn->close();
} else {
    echo "Invalid request method!";
}
?>
