<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkStatus.aspx.cs" Inherits="TechConnect.checkStatus" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Status</title>
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
            max-width: 600px;
            margin: auto;
        }
        h1 {
            text-align: center;
            color: #007bff;
        }
        .status-result {
            margin-top: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #e9ecef;
        }
        .bursary {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
        }
        .bursary strong {
            display: block;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Check Status</h1>
    
    <div id="statusResult" class="status-result">
        <h2>Your Bursary Applications</h2>
        <div id="resultText"></div>
    </div>
</div>

<script>
	// Simulated bursary application status data (this would normally come from a server)
	const bursaryApplications = [
<<<<<<< HEAD
		{ bursary: "Bursary Program", option: "Option 1", status: "Approved" },
=======
		{ bursary: "National Bursary Program", option: "Option 1", status: "Approved" },
		{ bursary: "University Bursary", option: "Option 2", status: "Pending" },
		{ bursary: "Local Government Bursary", option: "Option 1", status: "Rejected" },
		{ bursary: "Private Sponsor Bursary", option: "Option 3", status: "Approved" }
>>>>>>> 431b94c0523f7b098feb82a8c1e3cc3d5e763985
	];

	// Generate HTML for the bursary status results
	let resultHTML = '';
	bursaryApplications.forEach(application => {
		resultHTML += `
            <div class="bursary">
                <strong>Bursary:</strong> ${application.bursary}
                <strong>Selected Option:</strong> ${application.option}
                <strong>Status:</strong> ${application.status}
            </div>
        `;
	});

	// Display the result
	document.getElementById('resultText').innerHTML = resultHTML;
</script>

</body>
</html>
