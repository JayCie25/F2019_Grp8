using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Admin
{
    public partial class Tenants : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowUsers();
            LoggedUser.InnerText = Session["UserName"] as string;
        }
        private void ShowUsers()
        {
            string Query = "select UId as ID, FName as 'First Name', LName as 'Last Name', Contact as Contact, Gender, Birthday, Age from Tenant";
            UserssGV.DataSource = Con.GetData(Query);
            UserssGV.DataBind();

        }
        
    }
}