using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasksGiven
{
    public partial class LioginPage : System.Web.UI.Page
    {
        private HttpCookie httpCookie = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                httpCookie = Request.Cookies.Get("RegisterCookie");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (httpCookie == null)
            {
                LblSuccesMsg.Text = "Please Register and Try again!!!";
                LblSuccesMsg.Visible = true;
                LblSuccesMsg.ForeColor = Color.Red;
            }
            else
            {
                if ((TbUserName.Text.Equals(httpCookie["UserName"].ToString())) && (TbPassword.Text.Equals(httpCookie["Password"].ToString())))
                {
                    Response.Redirect("RedirectingPage.aspx");
                }
                else
                {
                    LblSuccesMsg.Text = "Please enter Valid UserName and Password!!!";
                    LblSuccesMsg.Visible = true;
                    LblSuccesMsg.ForeColor = Color.Red;
                }
            }
        }
    }
}