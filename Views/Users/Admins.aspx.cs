using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Users
{
    public partial class Houses : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            Admins();
            /**
            LoggedUser.InnerText = Session["UserName"] as string;
    */
        }
        private void Admins()
        {
            string Query = "select FName as 'First Name', LName as 'Last Name', Email as Email, Contact as Contact from Admins";
            ADMINS.DataSource = Con.GetData(Query);
            ADMINS.DataBind();
        }
    }
}