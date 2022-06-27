using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Tenant
{
    public partial class TenantInfo : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            LoggedUser.InnerText = Session["UserName"] as string;
            showw();
            fname.Attributes.Add("readonly", "readonly");
            lname.Attributes.Add("readonly", "readonly");
            email.Attributes.Add("readonly", "readonly");
            tcontact.Attributes.Add("readonly", "readonly");
            tgender.Attributes.Add("disabled", "disabled");
            tbday.Attributes.Add("readonly", "readonly");
            tage.Attributes.Add("readonly", "readonly");
        }
        private void showw()
        {
                string tp = Session["UserName"] as string;
                string Query = "select UId as 'Tenant ID', FName as 'First Name', LName as 'Last Name', Email, Contact, Gender, Birthday, Age from Tenant where Uname ='"+ tp +"'";
                Bookings.DataSource = Con.GetData(Query);
                Bookings.DataBind();
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            if(tgender.SelectedValue == "Select Gender")
            {
                ErrMsg.InnerText = "Failed to Update!";
            }
            else
            {
                string FName = fname.Value;
                string LName = lname.Value;
                string Email = email.Value;
                string Contact = tcontact.Value;
                string Gender = tgender.SelectedValue;
                string Birthday = tbday.Value;
                string Age = tage.Value;
                string Uname = uname.Value;
                string Pass = pass.Value;
                string UId = uid.Value;
                string Query = "update Tenant set FName='{0}',LName='{1}', Email='{2}',Contact='{3}',Gender='{4}',Birthday='{5}', Age='{6}' where UId={7}";
                Query = string.Format(Query, FName, LName, Email, Contact, Gender, Birthday, Age, Bookings.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                showw();
                ErrMsg.InnerText = "";
                Bookings.SelectedIndex = -1;
            }
        }

        protected void Bookings_SelectedIndexChanged(object sender, EventArgs e)
        {
            uid.Value = Bookings.SelectedRow.Cells[1].Text;
            fname.Value = Bookings.SelectedRow.Cells[2].Text;
            lname.Value = Bookings.SelectedRow.Cells[3].Text;
            email.Value = Bookings.SelectedRow.Cells[4].Text;
            tcontact.Value = Bookings.SelectedRow.Cells[5].Text;
            tgender.SelectedValue = Bookings.SelectedRow.Cells[6].Text;
            tbday.Value = Bookings.SelectedRow.Cells[7].Text;
            tage.Value = Bookings.SelectedRow.Cells[8].Text;
            fname.Attributes.Remove("readonly");
            lname.Attributes.Remove("readonly");
            email.Attributes.Remove("readonly");
            tcontact.Attributes.Remove("readonly");
            tgender.Attributes.Remove("disabled");
            tbday.Attributes.Remove("readonly");
            tage.Attributes.Remove("readonly");
        }
    }
}