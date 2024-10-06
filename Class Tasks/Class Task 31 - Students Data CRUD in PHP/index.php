<?php require_once "connect.php"; ?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>PHP CRUDs</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
    }

    table,
    th,
    td {
      border: 1px solid black;
    }

    th,
    td {
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }

    .button {
      padding: 5px 10px;
      margin: 2px;
      border: none;
      color: white;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 12px;
      border-radius: 4px;
    }

    .edit {
      background-color: #4CAF50;
      /* Green */
    }

    .delete {
      background-color: #f44336;
      /* Red */
    }

    .edit:hover,
    .delete:hover {
      opacity: 0.8;
    }
  </style>
</head>

<body>
  <?php
  $sql = "SELECT id, name, father_name, city, age, mobile_num FROM Student";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    // Output data of each row
    echo "<table>";
    echo "<tr><th>ID</th><th>Name</th><th>Father's Name</th><th>City</th><th>Age</th><th>Mobile Number</th><th>Actions</th></tr>";
    while ($row = $result->fetch_assoc()) {
      echo "<tr>";
      echo "<td>" . $row["id"] . "</td>";
      echo "<td>" . $row["name"] . "</td>";
      echo "<td>" . $row["father_name"] . "</td>";
      echo "<td>" . $row["city"] . "</td>";
      echo "<td>" . $row["age"] . "</td>";
      echo "<td>" . $row["mobile_num"] . "</td>";
      echo "<td>";
      echo "<a href='update.php?id=" . $row["id"] . "' class='button edit'>Edit</a> ";
      echo "<a href='delete.php?id=" . $row["id"] . "' class='button delete'>Delete</a>";
      echo "</td>";
      echo "</tr>";
    }
    echo "</table>";
  } else {
    echo "0 results";
  }
  ?>
</body>

</html>