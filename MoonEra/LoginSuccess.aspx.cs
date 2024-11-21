using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoonEra
{
    public partial class LoginSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user is authenticated
                if (Session["User"] == null)
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    // Populate username label
                    lblUsername.Text = Session["User"].ToString();
                }
            }
        }

        protected void btnLetMeOut_Click(object sender, EventArgs e)
        {
            // Clear session and redirect to login
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // Redirect to the Update page
            Response.Redirect("Update.aspx");
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // Redirect to the Update page
            Response.Redirect("Delete.aspx");
        }
    }
}