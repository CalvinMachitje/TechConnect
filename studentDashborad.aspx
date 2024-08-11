<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentDashborad.aspx.cs" Inherits="TechConnect.studentDashborad" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            max-width: 800px;
            margin: auto;
        }
        h1 {
            text-align: center;
            color: #007bff;
        }
        h2 {
            color: #333;
            margin-top: 20px;
        }
        .section {
            margin-bottom: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 10px;
        }
        button:hover {
            background-color: #0056b3;
        }
        .upload-section input[type="file"] {
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Student Dashboard</h1>

    <div class="section">
        <h2>Profile</h2>
        <button onclick="alert('Profile edit functionality not implemented yet!')">Update Profile</button>
    </div>

    <div class="section">
        <h2>Profile</h2>
        <h3>Personal Details</h3>
        <p>Details about the student.</p>
        
        <h3>Address Details</h3>
        <p>Details about the student's address.</p>
        
        <h3>High School Details</h3>
        <p>Details about the student's high school.</p>
        
        <h3>Matric Results Details</h3>
        <p>Details about the student's matric results.</p>
        
        <h3>Next of Kin</h3>
        <p>Details about the student's next of kin.</p>
    </div>

    <div class="section">
        <h2>Request Help</h2>
        <button onclick="alert('Help request functionality not implemented yet!')">Request Help</button>
    </div>

    <div class="section upload-section">
        <h2>Upload Documents</h2>
        <input type="file" id="documentUpload" multiple>
        <button onclick="alert('Document upload functionality not implemented yet!')">Upload</button>
    </div>

    <div class="section">
        <h2>Check Status</h2>
        <button onclick="alert('Status check functionality not implemented yet!')">Check Status</button>
    </div>
</div>

</body>
</html>