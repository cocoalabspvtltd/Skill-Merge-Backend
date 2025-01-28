<!DOCTYPE html>
<html>
<head>
    <title>New Student Registered</title>
</head>
<body>
    <h1>New Student Registered</h1>
    <p>A new student has registered.</p>
    <p><strong>Name:</strong> {{ $student->name }}</p>
    <p><strong>Email:</strong> {{ $student->email }}</p>
    <p><strong>Phone:</strong> {{ $student->phone_number }}</p>
    <p><strong>Message:</strong> {{ $student->message }}</p>
</body>
</html>
