<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Specialists Analytics</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Specialists Analytics</h1>
    <?php
    include 'db_connect.php';

    $sql = "SELECT * FROM specialists";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>ID</th><th>Specialist Name</th><th>Specialty</th><th>Contact Info</th><th>Associated Risks</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"]. "</td><td>" . $row["specialist_name"]. "</td><td>" . $row["specialty"]. "</td><td>" . $row["contact_info"]. "</td><td>" . $row["associated_risks"]. "</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $conn->close();
    ?>
</body>
</html>

