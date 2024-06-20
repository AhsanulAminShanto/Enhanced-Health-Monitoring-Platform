<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patient Demographic Analytics</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Patient Demographic Analytics</h1>
    <?php
    include 'db_connect.php';

    $sql = "SELECT * FROM demographics";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Address</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"]. "</td><td>" . $row["name"]. "</td><td>" . $row["age"]. "</td><td>" . $row["gender"]. "</td><td>" . $row["address"]. "</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $conn->close();
    ?><h1>Chart Image</h1>
    <img src="image/chart.jpeg" alt="Chart Image" style="max-width:100%; height:auto;">

</body>
</html>
