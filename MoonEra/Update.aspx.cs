using System;
using System.Collections.Generic;
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
                rfvYoB.Visible = false;

                lblConfirm.Visible = false;
                lblNewValue.Visible = false;

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
            string connectionString = "Data Source=mimas.itds.unt.edu;Initial Catalog=F24Team8;User ID=Team8;Password=F4720T8;";

            using (SqlConnection myConnection = new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT L.Email, L.Password, L.FName, L.LName, L.YOB,
                           U.PhoneNumber, U.StreetAddress, U.City, U.State, U.ZipCode,
                           U.NameOnCard, U.CardNumber, U.ExpirationDate, U.CVV
                    FROM dbo.Login L
                    LEFT JOIN dbo.UserInformation U ON L.Email = U.Email
                    WHERE L.Email = @Email";

                using (SqlCommand myCommand = new SqlCommand(query, myConnection))
                {
                    myCommand.Parameters.AddWithValue("@Email", Session["Email"]);

                    try
                    {
                        myConnection.Open();
                        using (SqlDataReader myReader = myCommand.ExecuteReader())
                        {
                            if (myReader.HasRows)
                            {
                                while (myReader.Read())
                                {
                                    // Populate labels with data from the database
                                    lblEmail.Text = myReader["Email"].ToString();
                                    lblPassword.Text = myReader["Password"].ToString();
                                    lblFName.Text = myReader["FName"].ToString();
                                    lblLName.Text = myReader["LName"].ToString();
                                    lblYoB.Text = myReader["YOB"].ToString();
                                    lblPhone.Text = myReader["PhoneNumber"].ToString();
                                    lblStreetAddress.Text = myReader["StreetAddress"].ToString();
                                    lblCity.Text = myReader["City"].ToString();
                                    lblState.Text = myReader["State"].ToString();
                                    lblZipcode.Text = myReader["ZipCode"].ToString();
                                    lblNameOnCard.Text = myReader["NameOnCard"].ToString();
                                    lblCardNumber.Text = myReader["CardNumber"].ToString();
                                    lblExpirationDate.Text = myReader["ExpirationDate"].ToString();
                                    lblCVV.Text = myReader["CVV"].ToString();
                                }
                            }
                            else
                            {
                                System.Diagnostics.Debug.WriteLine("No user found with provided email.");
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine("Error retrieving user data: " + ex.Message);
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
            }
            else
            {
                lblConfirm.Visible = false;
                txtPassword.Visible = false;
                txtConfirmPassword.Visible = false;
                lblNewValue.Visible = false;
                cvPasswords.Visible = false;
                rfvPassword.Enabled = false;
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

                    // Update Login table
                    using (SqlCommand loginCommand = new SqlCommand(@"
                UPDATE dbo.Login
                SET Password = @Password, FName = @FName, LName = @LName, YOB = @YOB
                WHERE Email = @Email", UConnection))
                    {
                        loginCommand.Parameters.AddWithValue("@Email", Session["Email"]);
                        loginCommand.Parameters.AddWithValue("@Password", cbPassword.Checked ? txtPassword.Text : lblPassword.Text);
                        loginCommand.Parameters.AddWithValue("@FName", cbFName.Checked ? txtFName.Text : lblFName.Text);
                        loginCommand.Parameters.AddWithValue("@LName", cbLName.Checked ? txtLName.Text : lblLName.Text);
                        loginCommand.Parameters.AddWithValue("@YOB", cbYoB.Checked ? txtYoB.Text : lblYoB.Text);

                        int rowsAffected = loginCommand.ExecuteNonQuery();
                        System.Diagnostics.Debug.WriteLine("Rows affected in Login: " + rowsAffected);
                        isUpdateSuccessful = rowsAffected > 0;
                    }

                    // Update UserInformation table
                    using (SqlCommand userInfoCommand = new SqlCommand(@"
                UPDATE dbo.UserInformation
                SET PhoneNumber = @PhoneNumber, StreetAddress = @StreetAddress, City = @City, State = @State, ZipCode = @ZipCode,
                    NameOnCard = @NameOnCard, CardNumber = @CardNumber, ExpirationDate = @ExpirationDate, CVV = @CVV
                WHERE Email = @Email", UConnection))
                    {
                        userInfoCommand.Parameters.AddWithValue("@Email", Session["Email"]);
                        userInfoCommand.Parameters.AddWithValue("@PhoneNumber", cbPhone.Checked ? txtPhone.Text : lblPhone.Text);
                        userInfoCommand.Parameters.AddWithValue("@StreetAddress", cbAddress.Checked ? txtStreetAddress.Text : lblStreetAddress.Text);
                        userInfoCommand.Parameters.AddWithValue("@City", cbAddress.Checked ? txtCity.Text : lblCity.Text);
                        userInfoCommand.Parameters.AddWithValue("@State", cbAddress.Checked ? txtState.Text : lblState.Text);
                        userInfoCommand.Parameters.AddWithValue("@ZipCode", cbAddress.Checked ? txtZipcode.Text : lblZipcode.Text);
                        userInfoCommand.Parameters.AddWithValue("@NameOnCard", cbPaymentMethod.Checked ? txtNameOnCard.Text : lblNameOnCard.Text);
                        userInfoCommand.Parameters.AddWithValue("@CardNumber", cbPaymentMethod.Checked ? txtCardNumber.Text : lblCardNumber.Text);
                        userInfoCommand.Parameters.AddWithValue("@ExpirationDate", cbPaymentMethod.Checked ? txtExpirationDate.Text : lblExpirationDate.Text);
                        userInfoCommand.Parameters.AddWithValue("@CVV", cbPaymentMethod.Checked ? txtCVV.Text : lblCVV.Text);

                        int rowsAffected = userInfoCommand.ExecuteNonQuery();
                        System.Diagnostics.Debug.WriteLine("Rows affected in UserInformation: " + rowsAffected);
                        isUpdateSuccessful = isUpdateSuccessful && rowsAffected > 0;
                    }
                }

                if (isUpdateSuccessful)
                {
                    Response.Redirect("~/UpdateSuccess.aspx");
                }
                else
                {
                    lblUpdateStatus.Text = "I'm sorry, your update was unsuccessful. Please try again.";
                    lblUpdateStatus.ForeColor = System.Drawing.Color.Red;
                    lblUpdateStatus.Visible = true;
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error during update: " + ex.Message);
                lblUpdateStatus.Text = "An error occurred while updating your information. Please try again later.";
                lblUpdateStatus.ForeColor = System.Drawing.Color.Red;
                lblUpdateStatus.Visible = true;
            }
        }
    }
}