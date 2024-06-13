<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patient Notifications Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Patient Notifications Form</h1>
    <form action="submit_notifications.php" method="post">
        <label for="patient_id">Patient ID:</label>
        <input type="text" id="patient_id" name="patient_id" required><br>
        <label for="notification">Notification:</label>
        <textarea id="notification" name="notification" required></textarea><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
