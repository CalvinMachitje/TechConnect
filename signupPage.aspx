<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signupPage.aspx.cs" Inherits="TechConnect.signupPage" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - TechConnect</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex; /* Use flexbox for layout */
            height: 100vh; /* Full height of the viewport */
        }
        .container {
            max-width: 400px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            flex: 1; /* Allow the form container to grow */
            display: flex;
            flex-direction: column; /* Stack items vertically */
            justify-content: center; /* Center items vertically */
        }
        h1 {
            text-align: center;
            color: #007BFF;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .guidelines {
            font-size: 0.9em;
            color: #666;
            margin-bottom: 15px;
        }
        button {
            text-align: center;
            width: 50%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .or {
            text-align: center;
            margin: 5px 0;
        }
        .login-link {
            text-align: center;
            margin-top: 15px;
        }
        .login-link a {
            color: #007BFF;
            text-decoration: none;
        }
        .image-container {
            flex: 1; /* Allow the image container to grow */
            background-image: url(Premium Vector _ Secure login concept illustration.jpg); /* Replace with your image URL */
            background-size: cover; /* Cover the entire area */
            background-position: center; /* Center the image */
        }
    	.auto-style1 {
			width: 99%;
		}
    </style>
</head>
<body>

    <div class="container" style="background-image: url('Moire - Baikal _ Sample.jpg')">
        <h1>Welcome to TechConnect</h1>
        <form id="signupForm">
            <label for="email">Email / ID Number</label>
            <input type="text" id="email" name="email" required class="auto-style1">

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <div class="guidelines">
                <p>A password should be 16 characters or more.</p>
                <p>A password should include a combination of letters, numbers, and characters.</p>
                <p>A password shouldn’t include any of the user’s personal information like DOB or phone number.</p>
                <p>A password shouldn’t contain any consecutive letters or numbers.</p>
                <p>A password shouldn’t be the word “password” or the same letter or number repeated.</p>
            </div>

            <label for="confirmPassword">Confirm Password</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required>

            <button type="submit" aria-dropeffect="popup" style="text-align: center">Continue</button>
        </form>

        <div class="or">&nbsp;&nbsp;</div>
        <button type="button" style="background-color: #DB4437;" aria-dropeffect="popup">Sign up with Google</button>

        <p class="guidelines">By continuing, you agree to TechConnect Terms of Service and acknowledge you've read our Privacy Policy.</p>
        
        <div class="login-link">
            <p>Already registered? <a href="login.html">Log in</a></p>
        </div>
    </div>

	<!-- Image container -->

</body>
</html>
