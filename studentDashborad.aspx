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
        .subject-group {
            margin-bottom: 10px;
        }
        .subject-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Student Dashboard</h1>

    <div class="section">
        <h2>Edit Profile</h2>
        <button onclick="openUpdateProfile()">Update Profile</button>
    </div>

    <div class="section" id="updateProfileSection" style="display: none;">
        <h2>Update Profile</h2>
        <form id="updateProfileForm">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" placeholder="Enter your name" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" id="email" placeholder="Enter your email" required>
            </div>
            
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" id="phone" placeholder="Enter your phone number" required>
            </div>
            
            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" rows="3" placeholder="Enter your address" required></textarea>
            </div>
            
            <div class="form-group">
                <label for="highSchool">High School</label>
                <input type="text" id="highSchool" placeholder="Enter your high school name" required>
            </div>
            
            <div class="subject-container" id="subjectContainer">
                <!-- Dynamic subject inputs will be added here -->
            </div>
            <button type="button" id="addSubjectButton">Add Subject</button>

            <div class="form-group">
                <label for="nextOfKin">Next of Kin</label>
                <input type="text" id="nextOfKin" placeholder="Enter your next of kin details" required>
            </div>

            <div class="form-group">
                <label for="apsScore">Overall APS Score</label>
                <input type="text" id="apsScore" placeholder="Enter your overall APS score" required>
            </div>

            <button type="submit">Update Profile</button>
        </form>
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

<script>
    let subjectCount = 0;

    document.getElementById('addSubjectButton').addEventListener('click', function() {
        subjectCount++;
        
        const subjectContainer = document.getElementById('subjectContainer');
        
        const subjectGroup = document.createElement('div');
        subjectGroup.className = 'subject-group';
        subjectGroup.innerHTML = `
            <label for="subject${subjectCount}">Subject ${subjectCount}</label>
            <input type="text" id="subject${subjectCount}" placeholder="Enter subject name" required>
            <label for="score${subjectCount}">Score</label>
            <input type="text" id="score${subjectCount}" placeholder="Enter score" required>
        `;
        
        subjectContainer.appendChild(subjectGroup);
    });

    document.getElementById('updateProfileForm').addEventListener('submit', function(event) {
        event.preventDefault();
        // Handle form submission logic here
        alert('Profile updated successfully!');
        closeUpdateProfile();
    });

    function openUpdateProfile() {
        document.getElementById('updateProfileSection').style.display = 'block';
    }

    function closeUpdateProfile() {
        document.getElementById('updateProfileSection').style.display = 'none';
        document.getElementById('updateProfileForm').reset();
        document.getElementById('subjectContainer').innerHTML = ''; // Clear subjects
        subjectCount = 0; // Reset subject count
    }
</script>

</body>
</html>