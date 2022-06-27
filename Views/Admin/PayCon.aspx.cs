using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Admin
{
    public partial class Billing : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            LoggedUser.InnerText = Session["UserName"] as string;
            showt();
            Button1.Attributes.Add("disabled","disabled");
        }
        private void showt()
        {
            string tt = Session["UserName"] as string;
            string Query = "select Fname as FirstName, Lname as LastName from Admins where Uname='" + tt + "'";
            showtt.DataSource = Con.GetData(Query);
            showtt.DataBind();
        }
        private void ShowBills()
        {
            string oner = USERR.Value;
            string ew = "Pending";
            string Query = "select Bill.BillId as 'Bill ID', Bill.TFName as 'First Name', Bill.TLName as 'Last Name', Bill.ElecBill as 'Electric Bill', Bill.WatBill as 'Water Bill', Bill.HouseCost as 'House Cost', Bill.Date as Date, Bill.Status as Status from Bill where Status = '"+ew+"' and Landlord='"+oner+"' ";
            ShowB.DataSource = Con.GetData(Query);
            ShowB.DataBind();
        }
        private void transac()
        {
            string oner = USERR.Value;
            string aw = "Paid";
            string Query = "select Bill.BillId as 'Bill ID', Bill.TFName as 'First Name', Bill.TLName as 'Last Name', Bill.ElecBill as 'Electric Bill', Bill.WatBill as 'Water Bill', Bill.HouseCost as 'House Cost', Bill.Date as Date, Bill.Status as Status from Bill where Status = '"+aw+"' and Landlord='" + oner + "' ";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
        }
        int t;
        int Key = 0;
        protected void ShowB_SelectedIndexChanged(object sender, EventArgs e)
        {
            Key = Convert.ToInt32(ShowB.SelectedRow.Cells[1].Text);
            ebill.Value = ShowB.SelectedRow.Cells[4].Text;
            wbill.Value = ShowB.SelectedRow.Cells[5].Text;
            hmcost.Value = ShowB.SelectedRow.Cells[6].Text;
            t = int.Parse(ebill.Value) + int.Parse(wbill.Value) + int.Parse(hmcost.Value);
            tbill.Value = t.ToString();
            stats.SelectedValue = ShowB.SelectedRow.Cells[7].Text;
            chk.Checked = false;
        }
        
        protected void ConfirmBtn_Click1(object sender, EventArgs e)
        {
            try
            {
                if (ShowB.SelectedRow == null)
                {
                    ErrMsg.InnerText = "FAILED TO CONFIRM DATA!";
                    ShowB.SelectedIndex = -1;
                    Button1.Attributes.Remove("disabled");
                }
                else
                {
                    var Date = DateTime.Now;
                    string Stats = stats.SelectedValue.ToString();
                    string Query = "update Bill set Status='{0}', Date='{1}' where BillId={2}";
                    Query = string.Format(Query, Stats, Date, ShowB.SelectedRow.Cells[1].Text);
                    Con.setData(Query);
                    ShowBills();
                    ErrMsg.InnerText = "PAYMENT CONFIRMED!";
                    ebill.Value = "";
                    wbill.Value = "";
                    hmcost.Value = "";
                    tbill.Value = "";
                    ShowB.SelectedIndex = -1;
                    chk.Checked = false;
                    string message = "PAYMENT CONFIRMED!";
                    string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    ShowBills();
                    transac();
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.ToString();
            }
        }

        protected void showtt_SelectedIndexChanged(object sender, EventArgs e)
        {
            USERR.Value = showtt.SelectedRow.Cells[1].Text + " " + showtt.SelectedRow.Cells[2].Text;
            fname.Value = showtt.SelectedRow.Cells[1].Text;
            lname.Value = showtt.SelectedRow.Cells[2].Text;
            showtt.Attributes.Add("hidden", "hidden");
            ShowBills();
            transac();
        }
    }
}