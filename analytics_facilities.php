<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Facilities Analytics</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Facilities Analytics</h1>
    <?php
    include 'db_connect.php';

    $sql = "SELECT * FROM facilities";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>ID</th><th>Facility Name</th><th>Facility Type</th><th>Location</th><th>Contact Info</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"]. "</td><td>" . $row["facility_name"]. "</td><td>" . $row["facility_type"]. "</td><td>" . $row["location"]. "</td><td>" . $row["contact_info"]. "</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $conn->close();
    ?>
</body>
</html>
