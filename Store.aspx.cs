using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Store : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Clear error and success messages on page load
        lblError.Visible = false;
        lblSuccess.Visible = false;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Clear previous messages
        lblError.Visible = false;
        lblSuccess.Visible = false;

        // Validation: Check if fields are empty
        if (string.IsNullOrEmpty(txtFirstName.Text) || string.IsNullOrEmpty(txtLastName.Text) ||
            string.IsNullOrEmpty(txtEmail.Text) || string.IsNullOrEmpty(txtPassword.Text) ||
            string.IsNullOrEmpty(txtConfirmPassword.Text) || string.IsNullOrEmpty(txtAge.Text))
        {
            lblError.Text = "All fields are required.";
            lblError.Visible = true;
            return;
        }

        // Validation: Check if password and confirm password match
        if (txtPassword.Text != txtConfirmPassword.Text)
        {
            lblError.Text = "Passwords do not match.";
            lblError.Visible = true;
            return;
        }

        // Validation: Check if age is a valid number
        if (!int.TryParse(txtAge.Text, out int age) || age < 18)
        {
            lblError.Text = "Please enter a valid age (must be 18 or older).";
            lblError.Visible = true;
            return;
        }

        // If all validations pass, display success message
        lblSuccess.Text = "Registration successful!";
        lblSuccess.Visible = true;

        // Optionally, here you can save the user data to a database or file
        // For demonstration, we just clear the form after submission
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtEmail.Text = "";
        txtPassword.Text = "";
        txtConfirmPassword.Text = "";
        txtAge.Text = "";
    }
}
