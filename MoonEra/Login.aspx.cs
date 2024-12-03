using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//add database class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace MoonEra
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            // Validate input
            if (string.IsNullOrEmpty(txtEmail.Text) || string.IsNullOrEmpty(txtPassword.Text))
            {
                lblError.Text = "Email and Password are required.";
                return;
            }

            string sEmail = "";
            string sPass = "";
            string sUser = "";

            SqlDataReader myReader;
            string connectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=F24Team8;User ID=Team8;Password=F4720T8;";

            using (SqlConnection myConnection = new SqlConnection(connectionString))
            {
                string query = "SELECT Email, Password, FName, LName FROM dbo.Login WHERE Email = @Email AND Password = @Password";

                using (SqlCommand myCommand = new SqlCommand(query, myConnection))
                {
                    myCommand.Parameters.AddWithValue("@Email", txtEmail.Text);
                    myCommand.Parameters.AddWithValue("@Password", txtPassword.Text);

                    try
                    {
                        myConnection.Open();
                        myReader = myCommand.ExecuteReader();

                        while (myReader.Read())
                        {
                            sEmail = myReader.GetString(0); // Email
                            sPass = myReader.GetString(1);  // Password
                            sUser = myReader.GetString(2) + " " + myReader.GetString(3); // FName + LName
                        }

                        if (!string.IsNullOrEmpty(sEmail) && txtEmail.Text == sEmail && txtPassword.Text == sPass)
                        {
                            // Store only essential data in session variables
                            Session["Email"] = sEmail; // Save email for subsequent database queries
                            Session["User"] = sUser;  // Save user-friendly name for display purposes

                            System.Diagnostics.Debug.WriteLine("Session[Email]: " + Session["Email"]);
                            System.Diagnostics.Debug.WriteLine("Session[User]: " + Session["User"]);

                            Response.Redirect("LoginSuccess.aspx");
                        }
                        else
                        {
                            lblError.Text = "Invalid email or password. Please try again.";
                            lblError.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine("Error: " + ex.Message);
                        lblError.Text = "An unexpected error occurred. Please try again.";
                    }
                }
            }
        }
        private string HashPassword(string password)
        {
            // Example: Implement hashing logic using a secure library
            // Placeholder:
            return password; // Replace with actual hash logic
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;
            lblError.Text = string.Empty;
        }
    }
}