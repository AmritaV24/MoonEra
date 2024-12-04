using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace MoonEra
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Code to handle any page load operations if necessary
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Ensure that YOB is not empty and is a valid integer
            if (string.IsNullOrEmpty(txtYOB.Text))
            {
                lblError.Text = "Year of Birth is required.";
                return;
            }

            if (!int.TryParse(txtYOB.Text, out int yearOfBirth))
            {
                lblError.Text = "Please enter a valid numeric year for Year of Birth.";
                return;
            }

            // Validate other inputs (basic validation)
            if (string.IsNullOrEmpty(txtEmail.Text) || string.IsNullOrEmpty(txtFirstName.Text) ||
                string.IsNullOrEmpty(txtLastName.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                lblError.Text = "All fields are required.";
                return;
            }

            lblError.Text = ""; // Clear previous error messages

            try
            {
                // Initialize SqlConnection using SqlDataSource1's connection string
                using (SqlConnection regConnection = new SqlConnection(SqlDataSource1.ConnectionString))
                {
                    // Define the SQL command with parameters
                    string insertQuery = "INSERT INTO [User] (Email, FName, LName, Password, YOB) VALUES (@Email, @FName, @LName, @Password, @YOB)";

                    using (SqlCommand regCommand = new SqlCommand(insertQuery, regConnection))
                    {
                        // Add parameters with explicit types
                        regCommand.Parameters.Add(new SqlParameter("@Email", SqlDbType.VarChar) { Value = txtEmail.Text });
                        regCommand.Parameters.Add(new SqlParameter("@FName", SqlDbType.VarChar) { Value = txtFirstName.Text });
                        regCommand.Parameters.Add(new SqlParameter("@LName", SqlDbType.VarChar) { Value = txtLastName.Text });
                        regCommand.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar) { Value = HashPassword(txtPassword.Text) }); // Hash password
                        regCommand.Parameters.Add(new SqlParameter("@YOB", SqlDbType.Int) { Value = yearOfBirth });

                        // Open the connection
                        regConnection.Open();

                        // Execute the command
                        regCommand.ExecuteNonQuery();
                    }
                }

                // Redirect to the success page after registration
                Response.Redirect("RegisterSuccess.aspx");
            }
            catch (SqlException ex)
            {
                // Log the error (for development purposes, log details; in production, log safely)
                lblError.Text = "An error occurred while registering. Please try again.";
                Console.WriteLine("SQL Error: " + ex.Message);
            }
        }

        // Example password hashing method
        private string HashPassword(string password)
        {
            using (var sha256 = System.Security.Cryptography.SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return Convert.ToBase64String(bytes);
            }
        }

        protected void txtConfirmEmail_TextChanged(object sender, EventArgs e)
        {
            // Handle any text changed events for Confirm Email if necessary
        }
    }
}
