<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Risk Analysis Analytics</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Risk Analysis Analytics</h1>
    <?php
    include 'db_connect.php';

    $sql = "SELECT * FROM risk_analysis";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>ID</th><th>Patient ID</th><th>Risk Factor</th><th>Description</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"]. "</td><td>" . $row["patient_id"]. "</td><td>" . $row["risk_factor"]. "</td><td>" . $row["description"]. "</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $conn->close();
    ?>
</body>
</html>
