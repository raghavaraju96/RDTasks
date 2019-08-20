using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TasksGiven
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        private string Username = null;
        private string LastName = null;
        private string Firstname = null;
        private string Password = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Username = TbUsername.Text;
                Firstname = TbFirstName.Text;
                LastName = TbLastName.Text;
                Password = TbPassword.Text;
            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            HttpCookie httpCookie = new HttpCookie("RegisterCookie");
            httpCookie["FirstName"] = TbFirstName.Text;
            httpCookie["LastName"] = TbLastName.Text;
            httpCookie["UserName"] = TbUsername.Text;
            httpCookie["Password"] = TbPassword.Text;
            httpCookie["Gender"] = RBLGender.SelectedValue;
            httpCookie["Location"] = DDLLocation.SelectedValue;
            //To make Cookie as Persistent we have to add the following line
            //httpCookie.Expires = DateTime.Now.AddDays(15);
            Response.Cookies.Add(httpCookie);
            Response.Redirect("~/LioginPage.aspx");
        }
    }
}