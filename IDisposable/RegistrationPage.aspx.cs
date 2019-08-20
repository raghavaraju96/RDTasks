using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task1
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        string firstname;
        string lastname;
        string username;
        string password;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                this.firstname = lblFirstName.Text;
                this.lastname = lblLastName.Text;
                this.username = lblUserName.Text;
                this.password = lblPassword.Text;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            HttpCookie NonpersistentCookie = new HttpCookie("NonPersistent");
            NonpersistentCookie["FirstName"] = TBFirstName0.Text;
            NonpersistentCookie["LastName"] = tbLastName.Text;
            NonpersistentCookie["UserName"] = tbUserName.Text;
            NonpersistentCookie["Password"] = tbPassword.Text;
            //If we add the following line it will become PersistentCookie
            //NonpersistentCookie.Expires = DateTime.Now.AddDays(14);
            Response.Cookies.Add(NonpersistentCookie);
            Response.Redirect("RedirectingPage.aspx");
        }
    }
}