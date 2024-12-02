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
            // Ensure the email matches the logged-in user's session email
            if (!string.Equals(Session["Email"]?.ToString(), txtEmail.Text, StringComparison.OrdinalIgnoreCase))
            {
                Response.Write("<script>alert('Email does not match the logged-in user.');</script>");
                return;
            }

            // Database connection string**WE NEEED TO CHANGE THIS!!***
            string connectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=F24Team8;User ID=Team8;Password=F4720T8;";

            // SQL delete command
            string deleteQuery = "DELETE FROM Login WHERE Email = @Email";

            using (SqlConnection dcon = new SqlConnection(connectionString))
            {
                SqlCommand dcommand = new SqlCommand(deleteQuery, dcon);
                dcommand.Parameters.AddWithValue("@Email", Session["Email"].ToString());

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
                catch (Exception ex)
                {
                    Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                }
            }
        }
        protected void DeleteFromSqlDataSource(object sender, EventArgs e)
        {
            try
            {
                 //This code should work after we establish a connection
                //SqlDataSource1.DeleteParameters["Email"].DefaultValue = Session["Email"].ToString();
                //SqlDataSource1.Delete();
                Session.Clear();
                Session.Abandon();
                Response.Redirect("DeleteSuccess.aspx");
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
            }
        }
    }
}
