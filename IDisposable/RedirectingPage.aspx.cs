using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Task1
{
    public partial class RedirectingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie httpCookie = Request.Cookies.Get("NonPersistent");
            if (httpCookie != null)
            {
                lblRedirectedFirstName.Text = httpCookie["FirstName"];
                lblRedirectedLastName.Text = httpCookie["LastName"];
                lblRedirectedUserName.Text = httpCookie["UserName"];
                lblRedirectedPassword.Text = "It was stored but should not be shown";
            }
            else
            {
                lblErrorMSg.Text = "Cookie not Present";
                lblErrorMSg.Visible = true;
                lblErrorMSg.ForeColor = Color.Red;
            }

        }
    }
}