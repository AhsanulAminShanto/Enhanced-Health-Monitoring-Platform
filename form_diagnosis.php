<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Patient Diagnosis Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Patient Diagnosis Form</h1>
    <form action="submit_diagnosis.php" method="post">
        <label for="patient_id">Patient ID:</label>
        <input type="text" id="patient_id" name="patient_id" required><br>
        <label for="diagnosis">Diagnosis:</label>
        <input type="text" id="diagnosis" name="diagnosis" required><br>
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
