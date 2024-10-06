<!DOCTYPE html>
<html>

<head>
    <title>Create New Student Record</title>
</head>

<body>

    <h1>Create New Student</h1>

    <form action="insert.php" method="post">
        <label>Name:</label>
        <input type="text" name="name" required><br>
        <label>Father's Name:</label>
        <input type="text" name="father_name" required><br>
        <label>City:</label>
        <input type="text" name="city" required><br>
        <label>Age:</label>
        <input type="number" name="age" required><br>
        <label>Mobile Number:</label>
        <input type="text" name="mobile_num" required><br>
        <input type="submit" value="Create Record">
    </form>

</body>

</html>