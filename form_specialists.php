<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Specialists Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Specialists Form</h1>
    <form action="submit_specialists.php" method="post">
        <label for="specialist_name">Specialist Name:</label>
        <input type="text" id="specialist_name" name="specialist_name" required><br>
        <label for="specialty">Specialty:</label>
        <input type="text" id="specialty" name="specialty" required><br>
        <label for="contact_info">Contact Information:</label>
        <input type="text" id="contact_info" name="contact_info" required><br>
        <label for="associated_risks">Associated Risks:</label>
        <textarea id="associated_risks" name="associated_risks" required></textarea><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
