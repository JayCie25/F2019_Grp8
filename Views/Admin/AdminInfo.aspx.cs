using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Admin
{
    public partial class AdminInfo : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            LoggedUser.InnerText = Session["UserName"] as string;
            showw();
            /**
            fname.Attributes.Add("readonly", "readonly");
            lname.Attributes.Add("readonly", "readonly");
            email.Attributes.Add("readonly", "readonly");
            tcontact.Attributes.Add("readonly", "readonly");
            */
        }
        private void showw()
        {
            string tp = Session["UserName"] as string;
            string Query = "select Id as 'Admin Id', FName as 'First Name', LName as 'Last Name', Email, Contact from Admins where Uname ='" + tp + "'";
            Bookings.DataSource = Con.GetData(Query);
            Bookings.DataBind();
        }
        /**
        protected void Bookings_SelectedIndexChanged(object sender, EventArgs e)
        {
            uid.Value = Bookings.SelectedRow.Cells[1].Text;
            fname.Value = Bookings.SelectedRow.Cells[2].Text;
            lname.Value = Bookings.SelectedRow.Cells[3].Text;
            email.Value = Bookings.SelectedRow.Cells[4].Text;
            tcontact.Value = Bookings.SelectedRow.Cells[5].Text;
        }
    */
    }
}