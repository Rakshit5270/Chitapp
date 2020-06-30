using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chitapp.Pages
{
    public partial class SideBarMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_ServerClick(object sender, EventArgs e)
        {
            Logout();
        }

        private void Logout()
        {
            //Users login = new Users();
            //login.User_Id = Convert.ToInt32(Session["UserID"]);
            //login.Company_Id = Convert.ToInt32(Session["CompanyID"]);
            //bool logout = loginService.RemoveFromCount(login);
            ////if (logout)
            ////{
            //Session["UserID"] = null;
            //Session["CompanyID"] = null;
            //CheckSessions();
            //}
        }
    }
}