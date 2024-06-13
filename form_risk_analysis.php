<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Risk Analysis Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Risk Analysis Form</h1>
    <form action="submit_risk_analysis.php" method="post">
        <label for="patient_id">Patient ID:</label>
        <input type="text" id="patient_id" name="patient_id" required><br>
        <label for="risk_factor">Risk Factor:</label>
        <input type="text" id="risk_factor" name="risk_factor" required><br>
        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
