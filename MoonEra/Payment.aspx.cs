using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoonEra
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubPay_Click(object sender, EventArgs e)
        {
            // Extract the first name from the Name on Card field
            string fullName = txtNameC.Text;
            string firstName = string.IsNullOrWhiteSpace(fullName) ? "Donor" : fullName.Split(' ')[0];

            // Redirect to the PaymentSuccess page with the first name as a query parameter
            Response.Redirect($"PaymentSuccess.aspx?name={HttpUtility.UrlEncode(firstName)}");
        }
    }
}
