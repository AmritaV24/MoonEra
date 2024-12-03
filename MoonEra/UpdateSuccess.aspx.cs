using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoonEra
{
    public partial class UpdateSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogMeIn_Click(object sender, EventArgs e)
        {
            // Redirect to Read.aspx when the button is clicked.
            Response.Redirect("~/Login.aspx");
        }
    }
}
