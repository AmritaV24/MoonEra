using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoonEra
{
    public partial class PaymentSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the 'name' query string parameter
                string name = Request.QueryString["name"];

                // Set a default name if the query string parameter is missing or empty
                if (string.IsNullOrEmpty(name))
                {
                    name = "Donor";
                }

                // Populate the Label with the retrieved name
                lblUsername.Text = name;
            }
        }
    }
}
