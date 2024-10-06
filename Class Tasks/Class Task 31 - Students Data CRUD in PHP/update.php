<?php
include("connect.php");


// Get student ID from query parameter
$id = intval($_GET['id']);

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve and sanitize input data
    $name = $conn->real_escape_string($_POST['name']);
    $father_name = $conn->real_escape_string($_POST['father_name']);
    $city = $conn->real_escape_string($_POST['city']);
    $age = intval($_POST['age']); // Sanitize integer
    $mobile_num = $conn->real_escape_string($_POST['mobile_num']);

    // Update record
    $sql = "UPDATE Student SET name='$name', father_name='$father_name', city='$city', age=$age, mobile_num='$mobile_num' WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        header('Location: index.php'); // Redirect to the list of students
        exit();
    } else {
        echo "Error: " . $conn->error;
    }
}

// Fetch existing student data
$sql = "SELECT * FROM Student WHERE id = $id";
$result = $conn->query($sql);
$student = $result->fetch_assoc();

?>

<!DOCTYPE html>
<html>

<head>
    <title>Update Student Record</title>
</head>

<body>

    <h1>Update Student</h1>

    <form method="post">
        <label>Name:</label>
        <input type="text" name="name" value="<?php echo $student['name']; ?>" required><br>
        <label>Father's Name:</label>
        <input type="text" name="father_name" value="<?php echo $student['father_name']; ?>" required><br>
        <label>City:</label>
        <input type="text" name="city" value="<?php echo $student['city']; ?>" required><br>
        <label>Age:</label>
        <input type="number" name="age" value="<?php echo $student['age']; ?>" required><br>
        <label>Mobile Number:</label>
        <input type="text" name="mobile_num" value="<?php echo $student['mobile_num']; ?>" required><br>
        <input type="submit" value="Update Record">
    </form>

</body>

</html>