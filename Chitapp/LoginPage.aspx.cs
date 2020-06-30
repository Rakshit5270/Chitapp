using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chitapp
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            string username = txtUserId.Text;
            string password = txtPassword.Text;

            if ((this.txtUserId.Text == "admin") && (this.txtPassword.Text == "admin"))
            {
                Response.Redirect("Pages/MemberDetails.aspx");

            }
        }
    }
}