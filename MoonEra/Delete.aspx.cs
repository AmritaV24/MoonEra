using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//database controls
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
//This is Michaels exact delete code that worked successfully for his code, WE NEED TO MAKE EDITS!!!
namespace MoonEra
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Validate email matches the logged-in user's session email
            if (Session["Email"] == null || !string.Equals(Session["Email"].ToString(), txtEmail.Text, StringComparison.OrdinalIgnoreCase))
            {
                Response.Write("<script>alert('The entered email does not match the logged-in user.');</script>");
                return;
            }

            string connectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=F24Team8;User ID=Team8;Password=F4720T8;Encrypt=True;TrustServerCertificate=True;";
            string deleteQuery = "DELETE FROM [User] WHERE Email = @Email";

            using (SqlConnection dcon = new SqlConnection(connectionString))
            {
                using (SqlCommand dcommand = new SqlCommand(deleteQuery, dcon))
                {
                    // Use SqlParameter for security and type handling
                    dcommand.Parameters.Add(new SqlParameter("@Email", SqlDbType.VarChar) { Value = Session["Email"].ToString() });

                    try
                    {
                        dcon.Open();
                        int rowsAffected = dcommand.ExecuteNonQuery();

                        if (rowsAffected > 0)
                        {
                            // Clear session after deletion
                            Session.Clear();
                            Session.Abandon();

                            // Redirect to the success page
                            Response.Redirect("DeleteSuccess.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('No matching account found to delete.');</script>");
                        }
                    }
                    catch (SqlException ex)
                    {
                        // Log the error for debugging
                        System.Diagnostics.Debug.WriteLine("SQL Error: " + ex.Message);
                        Response.Write("<script>alert('An error occurred while deleting your account. Please try again later.');</script>");
                    }
                    catch (Exception ex)
                    {
                        // Log general exceptions
                        System.Diagnostics.Debug.WriteLine("Error: " + ex.Message);
                        Response.Write($"<script>alert('An unexpected error occurred: {ex.Message}');</script>");
                    }
                }
            }
        }
    }
}