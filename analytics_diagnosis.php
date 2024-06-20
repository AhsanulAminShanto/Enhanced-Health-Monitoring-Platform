<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patient Diagnosis Analytics</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Patient Diagnosis Analytics</h1>
    <?php
    include 'db_connect.php';

    $sql = "SELECT * FROM diagnosis";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table><tr><th>ID</th><th>Patient ID</th><th>Diagnosis</th><th>Date</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"]. "</td><td>" . $row["patient_id"]. "</td><td>" . $row["diagnosis"]. "</td><td>" . $row["date"]. "</td></tr>";
        }
        echo "</table>";
    } else {
        echo "0 results";
    }

    $conn->close();
    ?>
</body>
</html>

