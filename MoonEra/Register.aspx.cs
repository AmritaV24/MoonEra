using System;
using System.Collections.Generic;
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

            lblError.Text = ""; // Clear previous error messages

            // Initialize SqlConnection using SqlDataSource1's connection string
            using (SqlConnection regConnection = new SqlConnection(SqlDataSource1.ConnectionString))
            {
                // Manually define the SQL command with parameters to ensure no nulls
                string insertQuery = "INSERT INTO Login (Email, FName, LName, Password, YOB) VALUES (@Email, @FName, @LName, @Password, @YOB)";

                using (SqlCommand regCommand = new SqlCommand(insertQuery, regConnection))
                {
                    // Add parameters for the command
                    regCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
                    regCommand.Parameters.AddWithValue("@FName", txtFirstName.Text);
                    regCommand.Parameters.AddWithValue("@LName", txtLastName.Text);
                    regCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
                    regCommand.Parameters.AddWithValue("@YOB", yearOfBirth); // Pass integer YOB value explicitly

                    // Open the connection
                    regConnection.Open();

                    // Execute the command
                    regCommand.ExecuteNonQuery();
                }
            }

            // Redirect to the success page after registration
            Response.Redirect("RegisterSuccess.aspx");
        }


        protected void txtConfirmEmail_TextChanged(object sender, EventArgs e)
        {
            // Handle any text changed events for Confirm Email if necessary
        }
    }
}

