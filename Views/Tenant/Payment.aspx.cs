using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Tenant
{
    public partial class Payment : System.Web.UI.Page
    {
        Models.Functions Con;

        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowBills();
            history();
            LoggedUser.InnerText = Session["UserName"] as string;
            ebill.Attributes.Add("hidden", "hidden");
            wbill.Attributes.Add("hidden", "hidden");
            hmcost.Attributes.Add("hidden", "hidden");
        }
        private void ShowBills()
        {
            USERR.Value = Session["UserName"] as string;
            SqlConnection con = new SqlConnection(@"Data Source=JAYCIE;Initial Catalog=hfrms;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select FName from Tenant where Uname= @Uname", con);
            cmd.Parameters.AddWithValue("@Uname", USERR.Value);
            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                fname.Value = da.GetValue(0).ToString();
            }
            con.Close();
            string st1 = fname.Value;
            string ew = "Pending";
            string Query = " select Bill.TFName as 'First Name', Bill.TLName as 'Last Name', Bill.ElecBill as 'Electric Bill', Bill.WatBill as 'Water Bill', Bill.HouseCost as 'House Cost', Bill.Date as Date, Bill.Status as Status from Bill where Status = '" + ew + "' and Bill.TFName = '" + st1 + "'";
            ShowB.DataSource = Con.GetData(Query);
            ShowB.DataBind();
        }
        private void history()
        {
            USERR.Value = Session["UserName"] as string;
            SqlConnection con = new SqlConnection(@"Data Source=JAYCIE;Initial Catalog=hfrms;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select FName from Tenant where Uname= @Uname", con);
            cmd.Parameters.AddWithValue("@Uname", USERR.Value);
            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                fname.Value = da.GetValue(0).ToString();
            }
            con.Close();
            string st1 = fname.Value;
            string ew = "Paid";
            string Query = " select Bill.TFName as 'First Name', Bill.TLName as 'Last Name', Bill.ElecBill as 'Electric Bill', Bill.WatBill as 'Water Bill', Bill.HouseCost as 'House Cost', Bill.Date as Date, Bill.Status as Status from Bill where Status = '" + ew + "' and Bill.TFName = '" + st1 + "'";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
        }
        int t;
        protected void ShowB_SelectedIndexChanged1(object sender, EventArgs e)
        {
            ebill.Value = ShowB.SelectedRow.Cells[3].Text;
            wbill.Value = ShowB.SelectedRow.Cells[4].Text;
            hmcost.Value = ShowB.SelectedRow.Cells[5].Text;

            t = int.Parse(ebill.Value) + int.Parse(wbill.Value) + int.Parse(hmcost.Value);
            tbill.Value = t.ToString();
        }


    }
}