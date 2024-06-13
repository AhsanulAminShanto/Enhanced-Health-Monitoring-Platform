<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Facilities Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Facilities Form</h1>
    <form action="submit_facilities.php" method="post">
        <label for="facility_name">Facility Name:</label>
        <input type="text" id="facility_name" name="facility_name" required><br>
        <label for="facility_type">Facility Type:</label>
        <input type="text" id="facility_type" name="facility_type" required><br>
        <label for="location">Location:</label>
        <input type="text" id="location" name="location" required><br>
        <label for="contact_info">Contact Information:</label>
        <input type="text" id="contact_info" name="contact_info" required><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
