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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User"] == null)
                {
                    System.Diagnostics.Debug.WriteLine("Session expired. Redirecting to Default.aspx.");
                    Response.Redirect("~/Default.aspx");
                }
                else
                {
                    // Retrieve and display current user information
                    LoadUserData();
                }
                // Initial setup: hide controls and reset checkboxes
                txtPassword.Visible = false;
                txtConfirmPassword.Visible = false;
                txtFName.Visible = false;
                txtLName.Visible = false;
                txtYoB.Visible = false;
                txtPhone.Visible = false;
                txtStreetAddress.Visible = false;
                txtCity.Visible = false;
                txtState.Visible = false;
                txtZipcode.Visible = false;
                txtNameOnCard.Visible = false;
                txtCardNumber.Visible = false;
                txtExpirationDate.Visible = false;
                txtCVV.Visible = false;

                rfvFName.Visible = false;
                rfvLName.Visible = false;
                rfvPassword.Visible = false;
                rfvPasswordC.Visible = false;
                rfvYoB.Visible = false;

                lblConfirm.Visible = false;
                lblNewValue.Visible = false;
                lblError.Visible = false;

                cbFName.Checked = false;
                cbLName.Checked = false;
                cbPassword.Checked = false;
                cbYoB.Checked = false;
                cbPhone.Checked = false;
                cbAddress.Checked = false;
                cbPaymentMethod.Checked = false;
            }


        }

        private void LoadUserData()
        {
            // Validate Session["Email"]
            if (Session["Email"] == null || string.IsNullOrEmpty(Session["Email"].ToString()))
            {
                System.Diagnostics.Debug.WriteLine("Session['Email'] is null or empty. Redirecting to login.");
                lblError.Text = "Session expired. Please log in again.";
                lblError.Visible = true;
                Response.Redirect("~/Default.aspx");
                return;
            }

            string email = Session["Email"].ToString();
            System.Diagnostics.Debug.WriteLine("Email from session: " + email);

            string connectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=F24Team8;User ID=Team8;Password=F4720T8;";

            using (SqlConnection myConnection = new SqlConnection(connectionString))
            {
                string query = @"
            SELECT Email, Password, FName, LName, YOB, PhoneNumber, StreetAddress, City, State, ZipCode, NameOnCard, CardNumber, ExpirationDate, CVV 
            FROM [User] 
            WHERE Email = @Email";

                using (SqlCommand myCommand = new SqlCommand(query, myConnection))
                {
                    myCommand.Parameters.Add(new SqlParameter("@Email", SqlDbType.VarChar) { Value = email });

                    try
                    {
                        myConnection.Open();
                        using (SqlDataReader myReader = myCommand.ExecuteReader())
                        {
                            if (myReader.HasRows)
                            {
                                while (myReader.Read())
                                {
                                    lblEmail.Text = myReader["Email"]?.ToString() ?? "Not Provided";
                                    lblPassword.Text = myReader["Password"]?.ToString() ?? "Not Provided";
                                    lblFName.Text = myReader["FName"]?.ToString() ?? "Not Provided";
                                    lblLName.Text = myReader["LName"]?.ToString() ?? "Not Provided";
                                    lblYoB.Text = myReader["YOB"]?.ToString() ?? "Not Provided";
                                    lblPhone.Text = myReader["PhoneNumber"]?.ToString() ?? "Not Provided";
                                    lblStreetAddress.Text = myReader["StreetAddress"]?.ToString() ?? "Not Provided";
                                    lblCity.Text = myReader["City"]?.ToString() ?? "Not Provided";
                                    lblState.Text = myReader["State"]?.ToString() ?? "Not Provided";
                                    lblZipcode.Text = myReader["ZipCode"]?.ToString() ?? "Not Provided";
                                    lblNameOnCard.Text = myReader["NameOnCard"]?.ToString() ?? "Not Provided";
                                    lblCardNumber.Text = myReader["CardNumber"]?.ToString() ?? "Not Provided";
                                    lblExpirationDate.Text = myReader["ExpirationDate"]?.ToString() ?? "Not Provided";
                                    lblCVV.Text = myReader["CVV"]?.ToString() ?? "Not Provided";
                                }
                            }
                            else
                            {
                                System.Diagnostics.Debug.WriteLine("No user found for email: " + email);
                                lblError.Text = "No user information found.";
                                lblError.Visible = true;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine($"Error retrieving user data: {ex.Message}");
                        lblError.Text = "An error occurred while loading your information.";
                        lblError.Visible = true;
                    }
                }
            }
        }



        protected void cbPassword_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPassword.Checked == true)
            {
                lblConfirm.Visible = true;
                txtPassword.Visible = true;
                txtConfirmPassword.Visible = true;
                lblNewValue.Visible = true;
                cvPasswords.Visible = true;
                rfvPassword.Enabled = true;
                rfvPasswordC.Enabled = true;
            }
            else
            {
                lblConfirm.Visible = false;
                txtPassword.Visible = false;
                txtConfirmPassword.Visible = false;
                lblNewValue.Visible = false;
                cvPasswords.Visible = false;
                rfvPassword.Enabled = false;
                rfvPasswordC.Enabled = false;
            }
        }
        protected void cbFName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbFName.Checked == true)
            {
                txtFName.Visible = true;
                lblFName.Visible = true;
                rfvFName.Visible = true;
                lblNewValue.Visible = true;
            }
            else
            {
                txtFName.Visible = false;
                //lblFName.Visible = false;
                rfvFName.Visible = false;
                lblNewValue.Visible = false;
            }
        }
        protected void cbLName_CheckedChanged(object sender, EventArgs e)
        {
            if (cbLName.Checked == true)
            {
                txtLName.Visible = true;
                lblLName.Visible = true;
                rfvLName.Visible = true;
                lblNewValue.Visible = true;
            }
            else
            {
                txtLName.Visible = false;
                lblLName.Visible = false;
                rfvLName.Visible = false;
                lblNewValue.Visible = false;
            }
        }
        protected void cbPhone_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPhone.Checked == true)
            {
                txtPhone.Visible = true;
                lblPhone.Visible = true;
                //rfvLName.Visible = true;
                lblNewValue.Visible = true;
            }
            else
            {
                txtPhone.Visible = false;
                lblPhone.Visible = false;
                // rfvLName.Visible = false;
                lblNewValue.Visible = false;
            }
        }
        protected void cbYoB_CheckedChanged(object sender, EventArgs e)
        {
            if (cbYoB.Checked == true)
            {
                txtYoB.Visible = true;
                lblYoB.Visible = true;
                rfvYoB.Visible = true;
                lblNewValue.Visible = true;
            }
            else
            {
                txtYoB.Visible = false;
                lblYoB.Visible = false;
                rfvYoB.Visible = false;
                lblNewValue.Visible = false;
            }
        }
        protected void cbAddress_CheckedChanged(object sender, EventArgs e)
        {
            if (cbAddress.Checked == true)
            {
                txtStreetAddress.Visible = true;
                txtCity.Visible = true;
                txtState.Visible = true;
                txtZipcode.Visible = true;
                lblStreetAddress.Visible = true;
                lblCity.Visible = true;
                lblState.Visible = true;
                lblZipcode.Visible = true;
                //rfvYoB.Visible = true;
                lblNewValue.Visible = true;
            }
            else
            {
                txtStreetAddress.Visible = false;
                txtCity.Visible = false;
                txtState.Visible = false;
                txtZipcode.Visible = false;
                lblStreetAddress.Visible = false;
                lblCity.Visible = false;
                lblState.Visible = false;
                lblZipcode.Visible = false;
                //rfvYoB.Visible = false;
                lblNewValue.Visible = false;
            }
        }
        protected void cbPaymentMethod_CheckedChanged(object sender, EventArgs e)
        {
            if (cbPaymentMethod.Checked == true)
            {
                txtNameOnCard.Visible = true;
                txtCardNumber.Visible = true;
                txtExpirationDate.Visible = true;
                txtCVV.Visible = true;
                lblNameOnCard.Visible = true;
                lblCardNumber.Visible = true;
                lblExpirationDate.Visible = true;
                lblCVV.Visible = true;
                //rfvYoB.Visible = true;
                lblNewValue.Visible = true;
            }
            else
            {
                txtNameOnCard.Visible = false;
                txtCardNumber.Visible = false;
                txtExpirationDate.Visible = false;
                txtCVV.Visible = false;
                lblNameOnCard.Visible = false;
                lblCardNumber.Visible = false;
                lblExpirationDate.Visible = false;
                lblCVV.Visible = false;
                //rfvYoB.Visible = false;
                lblNewValue.Visible = false;
            }
        }
        protected void btnUpdateInformation_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=F24Team8;User ID=Team8;Password=F4720T8;";
            bool isUpdateSuccessful = false;

            try
            {
                using (SqlConnection UConnection = new SqlConnection(connectionString))
                {
                    UConnection.Open();

                    // Update [User] table
                    using (SqlCommand userInfoCommand = new SqlCommand(@"
                UPDATE [User]
                SET Password = @Password, 
                    FName = @FName, 
                    LName = @LName, 
                    YOB = @YOB, 
                    PhoneNumber = @PhoneNumber, 
                    StreetAddress = @StreetAddress, 
                    City = @City, 
                    State = @State, 
                    ZipCode = @ZipCode, 
                    NameOnCard = @NameOnCard, 
                    CardNumber = @CardNumber, 
                    ExpirationDate = @ExpirationDate, 
                    CVV = @CVV
                WHERE Email = @Email", UConnection))
                    {
                        // Add parameters with explicit types
                        userInfoCommand.Parameters.Add(new SqlParameter("@Email", SqlDbType.VarChar) { Value = Session["Email"]?.ToString() ?? string.Empty });
                        userInfoCommand.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar) { Value = cbPassword.Checked ? txtPassword.Text : lblPassword.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@FName", SqlDbType.VarChar) { Value = cbFName.Checked ? txtFName.Text : lblFName.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@LName", SqlDbType.VarChar) { Value = cbLName.Checked ? txtLName.Text : lblLName.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@YOB", SqlDbType.Int) { Value = cbYoB.Checked ? (object)Convert.ToInt32(txtYoB.Text) : Convert.ToInt32(lblYoB.Text) });
                        userInfoCommand.Parameters.Add(new SqlParameter("@PhoneNumber", SqlDbType.VarChar) { Value = cbPhone.Checked ? txtPhone.Text : lblPhone.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@StreetAddress", SqlDbType.VarChar) { Value = cbAddress.Checked ? txtStreetAddress.Text : lblStreetAddress.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@City", SqlDbType.VarChar) { Value = cbAddress.Checked ? txtCity.Text : lblCity.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@State", SqlDbType.VarChar) { Value = cbAddress.Checked ? txtState.Text : lblState.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@ZipCode", SqlDbType.VarChar) { Value = cbAddress.Checked ? txtZipcode.Text : lblZipcode.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@NameOnCard", SqlDbType.VarChar) { Value = cbPaymentMethod.Checked ? txtNameOnCard.Text : lblNameOnCard.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@CardNumber", SqlDbType.VarChar) { Value = cbPaymentMethod.Checked ? txtCardNumber.Text : lblCardNumber.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@ExpirationDate", SqlDbType.VarChar) { Value = cbPaymentMethod.Checked ? txtExpirationDate.Text : lblExpirationDate.Text });
                        userInfoCommand.Parameters.Add(new SqlParameter("@CVV", SqlDbType.VarChar) { Value = cbPaymentMethod.Checked ? txtCVV.Text : lblCVV.Text });

                        // Execute the query
                        int rowsAffected = userInfoCommand.ExecuteNonQuery();
                        System.Diagnostics.Debug.WriteLine("Rows affected: " + rowsAffected);

                        // Update success flag
                        isUpdateSuccessful = rowsAffected > 0;
                    }
                }

                // Redirect or display success message
                if (isUpdateSuccessful)
                {
                    Response.Redirect("~/UpdateSuccess.aspx");
                }
                else
                {
                    lblUpdateStatus.Text = "Update was unsuccessful. Please try again.";
                    lblUpdateStatus.ForeColor = System.Drawing.Color.Red;
                    lblUpdateStatus.Visible = true;
                }
            }
            catch (SqlException sqlEx)
            {
                System.Diagnostics.Debug.WriteLine("SQL Error: " + sqlEx.Message);
                lblUpdateStatus.Text = "Database error occurred. Please try again later.";
                lblUpdateStatus.ForeColor = System.Drawing.Color.Red;
                lblUpdateStatus.Visible = true;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error: " + ex.Message);
                lblUpdateStatus.Text = "An error occurred while updating your information. Please try again later.";
                lblUpdateStatus.ForeColor = System.Drawing.Color.Red;
                lblUpdateStatus.Visible = true;
            }
        }
    }
}
