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
                lblError.ForeColor = System.Drawing.Color.Red;
                return;
            }

            string sUser = "";
            string connectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=F24Team8;User ID=Team8;Password=F4720T8;";

            using (SqlConnection myConnection = new SqlConnection(connectionString))
            {
                // Query checks for matching email and hashed password
                string query = "SELECT FName, LName FROM [User] WHERE Email = @Email AND Password = @Password";

                using (SqlCommand myCommand = new SqlCommand(query, myConnection))
                {
                    // Hash the entered password before comparison
                    string hashedPassword = HashPassword(txtPassword.Text);

                    myCommand.Parameters.Add(new SqlParameter("@Email", SqlDbType.VarChar) { Value = txtEmail.Text });
                    myCommand.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar) { Value = hashedPassword });

                    try
                    {
                        myConnection.Open();
                        using (SqlDataReader myReader = myCommand.ExecuteReader())
                        {
                            if (myReader.Read()) // If a record is found
                            {
                                string firstName = myReader.GetString(0);
                                string lastName = myReader.GetString(1);
                                sUser = firstName + " " + lastName;

                                // Store essential data in session variables
                                Session["Email"] = txtEmail.Text;
                                Session["User"] = sUser;

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
                    }
                    catch (SqlException sqlEx)
                    {
                        System.Diagnostics.Debug.WriteLine("SQL Error: " + sqlEx.Message);
                        lblError.Text = "Database error occurred. Please try again.";
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine("Error: " + ex.Message);
                        lblError.Text = "An unexpected error occurred. Please try again.";
                    }
                }
            }
        }

        // Password hashing method
        private string HashPassword(string password)
        {
            using (var sha256 = System.Security.Cryptography.SHA256.Create())
            {
                byte[] bytes = sha256.ComputeHash(System.Text.Encoding.UTF8.GetBytes(password));
                return Convert.ToBase64String(bytes);
            }
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
