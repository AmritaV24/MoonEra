﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//add database class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

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
            string connectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=Student4720;User ID=StudentUser;Password=Bc!$4720;";

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

                        if (txtEmail.Text == sEmail && txtPassword.Text == sPass)
                        {
                            Session["User"] = sUser; // Save usr to session
                            Session["Email"] = sEmail; // save email to session
                            System.Diagnostics.Debug.WriteLine("Session[User]: " + Session["User"]);
                            Response.Redirect("Success.aspx");
                        }
                        else
                        {
                            lblError.Text = "Invalid username or password";
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
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            // Redirect to the Register page
            Response.Redirect("Register.aspx");
        }
    }
}