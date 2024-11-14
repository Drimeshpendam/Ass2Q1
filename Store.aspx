<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Store.aspx.cs" Inherits="Store" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        .form-container {
            width: 40%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }

        .error-message {
            color: red;
        }

        .success-message {
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Registration Form</h2>
            
            <!-- First Name -->
            <label for="txtFirstName">First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="input-field" />

            <!-- Last Name -->
            <label for="txtLastName">Last Name:</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="input-field" />

            <!-- Email Address -->
            <label for="txtEmail">Email Address:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-field" />

            <!-- Password -->
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" />

            <!-- Confirm Password -->
            <label for="txtConfirmPassword">Confirm Password:</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-field" TextMode="Password" />

            <!-- Age -->
            <label for="txtAge">Age:</label>
            <asp:TextBox ID="txtAge" runat="server" CssClass="input-field" />

            <!-- Error Messages -->
            <asp:Label ID="lblError" runat="server" CssClass="error-message" Visible="false" />

            <!-- Success Message -->
            <asp:Label ID="lblSuccess" runat="server" CssClass="success-message" Visible="false" />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Register" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
