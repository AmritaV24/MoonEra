using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoonEra
{
    public partial class RegisterSuccess : System.Web.UI.Page
    {
          protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblUsername.Text = (string)Session["Username"];
            }
        }
    }
}