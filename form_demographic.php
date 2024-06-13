<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patient Demographic Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Patient Demographic Form</h1>
    <form action="submit_demographic.php" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br>
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required><br>
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="male">Male</option>
            <option value="female">Female</option>
            <option value="other">Other</option>
        </select><br>
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
