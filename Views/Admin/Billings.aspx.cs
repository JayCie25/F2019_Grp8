using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            LoggedUser.InnerText = Session["UserName"] as string;
            showt();
            setbill.Attributes.Add("disabled", "disabled");
        }
        private void showt()
        {
            string tt = Session["UserName"] as string;
            string Query = "select Fname as FirstName, Lname as LastName from Admins where Uname='" + tt+"'";
            showtt.DataSource = Con.GetData(Query);
            showtt.DataBind();
        }
        private void showbooking()
        {
            string oner = USERR.Value;
            string Query = "select BRoom as 'House ID', Landlord, TFName as 'First Name', TLName as 'Last Name', RCost as 'House Cost', BookDate as 'Book Date' from Booking where Landlord='"+ oner +"'";
            Booking.DataSource = Con.GetData(Query);
            Booking.DataBind();
        }

        protected void setbill_Click(object sender, EventArgs e)
        {
            setbill.Attributes.Add("disabled", "disabled");
            try
            {
                if (Booking.SelectedRow != null)
                {
                    string TFNamne = Booking.SelectedRow.Cells[3].Text;
                    string TLName = Booking.SelectedRow.Cells[4].Text;
                    string ElecBill = ebill.Value;
                    string WatBill = wbill.Value;
                    string HouseCost = tcost.Value;
                    string Landlord = fname.Value + " " + lname.Value;
                    var Date = DateTime.Now;
                    string Status = "Pending";
                    string Query = "insert into Bill values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}')";
                    Query = string.Format(Query, TFNamne, TLName, ElecBill, WatBill, HouseCost, Status, Date, Landlord);
                    Con.setData(Query);
                    tname.Value = "";
                    ebill.Value = "";
                    wbill.Value = "";
                    tcost.Value = "";
                    Booking.SelectedIndex = -1;
                    string message = "BILLS SET SUCCESSFULLY!";
                    string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                }

            }
            catch (NullReferenceException Ex)
            {
                ErrMsg.InnerText = Ex.ToString();

            }
        }

        protected void Booking_SelectedIndexChanged(object sender, EventArgs e)
        {
            string fn = Booking.SelectedRow.Cells[3].Text;
            string ln = Booking.SelectedRow.Cells[4].Text;
            tname.Value = fn +" "+ ln;
            tcost.Value = Booking.SelectedRow.Cells[5].Text;
            setbill.Attributes.Remove("disabled");
            ebill.Value = "";
            wbill.Value = "";
        }

        protected void showtt_SelectedIndexChanged(object sender, EventArgs e)
        {
            USERR.Value = showtt.SelectedRow.Cells[1].Text + " " + showtt.SelectedRow.Cells[2].Text;
            fname.Value = showtt.SelectedRow.Cells[1].Text;
            lname.Value = showtt.SelectedRow.Cells[2].Text;
            showtt.Attributes.Add("hidden", "hidden");
            showbooking();
        }
    }
}