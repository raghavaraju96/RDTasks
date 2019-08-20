using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasksGiven
{
    public partial class RedirectingPage : System.Web.UI.Page
    {
        HttpCookie httpCookie = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                httpCookie = Request.Cookies.Get("RegisterCookie");
                LblFirstName.Visible = true;
                LblLastName.Visible = true;
                LblUserName.Visible = true;
                LblGender.Visible = true;
                LblLocation.Visible = true;
                LblFirstName.Text = httpCookie["FirstName"].ToString();
                LblLastName.Text = httpCookie["LastName"].ToString();
                LblUserName.Text = httpCookie["UserName"].ToString();
                LblLocation.Text = httpCookie["Location"].ToString();
                LblGender.Text = httpCookie["Gender"].ToString();
            }
        }
        protected void Pre_Init(object sender,EventArgs e)
        { }

        protected void BtnLogOff_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["RegisterCookie"] != null)
            {
                Response.Cookies["RegisterCookie"].Expires = DateTime.Now.AddDays(-1);
            }
            Response.Redirect("~/LioginPage.aspx");
        }
    }
}