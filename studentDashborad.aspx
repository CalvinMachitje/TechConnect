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
        .bursary-section {
            margin-bottom: 20px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f8f9fa;
        }
        .bursary {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
        }
        .bursary input[type="radio"] {
            margin-right: 5px;
        }
        .bursary-details {
            margin-top: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #e9ecef;
        }
    </style>
</head>
<body>

	<form id="form1" runat="server">

<div class="container">
    <h1>Student Dashboard</h1>

    <div class="bursary-section">
        <h2>Available Bursaries</h2>
        <div id="bursaryList">
            <!-- Bursary options will be added here -->
        </div>
        <button onclick="applyForSelectedBursaries()">Apply for Selected</button>
    </div>

    <div class="section">
        <h2>Edit Profile</h2>
        <asp:Button ID="btneditProfile" runat="server" OnClick="btneditProfile_Click" Text="Edit profile" />
    </div>

    <div class="section" id="updateProfileSection" style="display: none;">
        <!-- Update profile form -->
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
        <asp:Button ID="btncheckStatus" runat="server" OnClick="btncheckStatus_Click" Text="Check status" />
    </div>
</div>

<script>
	// Simulated bursary data (this would normally come from a server)
	const bursaryData = [
		{
			id: 1, name: "National Bursary Program", options: [
				{ id: 1, name: "Option 1", details: "Details for Option 1" },
				{ id: 2, name: "Option 2", details: "Details for Option 2" },
				{ id: 3, name: "Option 3", details: "Details for Option 3" }
			]
		},
		{
			id: 2, name: "University Bursary", options: [
				{ id: 4, name: "Option 1", details: "Details for Option 1" },
				{ id: 5, name: "Option 2", details: "Details for Option 2" },
				{ id: 6, name: "Option 3", details: "Details for Option 3" }
			]
		},
		{
			id: 3, name: "Local Government Bursary", options: [
				{ id: 7, name: "Option 1", details: "Details for Option 1" },
				{ id: 8, name: "Option 2", details: "Details for Option 2" },
				{ id: 9, name: "Option 3", details: "Details for Option 3" }
			]
		},
		{
			id: 4, name: "Private Sponsor Bursary", options: [
				{ id: 10, name: "Option 1", details: "Details for Option 1" },
				{ id: 11, name: "Option 2", details: "Details for Option 2" },
				{ id: 12, name: "Option 3", details: "Details for Option 3" }
			]
		}
	];

	// Generate HTML for the bursary options
	let bursaryListHTML = '';
	bursaryData.forEach(bursary => {
		bursaryListHTML += `
            <div class="bursary">
                <h3>${bursary.name}</h3>
                <div class="bursary-details">
                    ${bursary.options.map(option => `
                        <div>
                            <input type="radio" name="bursary-${bursary.id}" id="option-${option.id}">
                            <label for="option-${option.id}">${option.name}</label>
                            <p>${option.details}</p>
                        </div>
                    `).join('')}
                </div>
            </div>
        `;
	});

	// Display the bursary options
	document.getElementById('bursaryList').innerHTML = bursaryListHTML;

	function applyForSelectedBursaries() {
		// Get the selected bursary options
		const selectedOptions = Array.from(document.querySelectorAll('#bursaryList input[type="radio"]:checked'))
			.map(radio => parseInt(radio.id.split('-')[1]));

		// Simulate applying for the selected bursaries (replace with actual logic)
		alert(`Applying for bursary options with IDs: ${selectedOptions.join(', ')}`);
	}
</script>

	</form>

</body>
</html>