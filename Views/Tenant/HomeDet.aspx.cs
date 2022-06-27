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
    public partial class HomeDet : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            LoggedUser.InnerText = Session["UserName"] as string;
            showone();
        }
        private void showone()
        {
            string tenant = Session["UserName"] as string;
            string Query = "select Tenant.Uname as Tenant, Booking.TFName as 'First Name', Booking.TLName as 'Last Name',Booking.BRoom as RoomID, Booking.BookDate as 'Book Date', Booking.Landlord from Tenant inner join Booking on Tenant.FName = Booking.TFName where Uname = '" + tenant+"'";
            GridView1.DataSource = Con.GetData(Query);
            GridView1.DataBind();
        }
        private void ShowAdmin()
        {
            string Query = "select Owner as Landlord, Method1 as 'Method 1', Method1info as Info, Method2 as 'Method 2', Method2info as Info, Method3 as 'Method 3', Method3info as Info from [paymet]";
            admins.DataSource = Con.GetData(Query);
            admins.DataBind();
        }
        public DataSet Bind()
        {

            SqlConnection con = new SqlConnection(@"Data Source=JAYCIE;Initial Catalog=hfrms;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select Owner as Landlord, Method1 as 'Method 1', Method1info as Info, Method2 as 'Method 2', Method2info as Info, Method3 as 'Method 3', Method3info as Info from [paymet] where Owner like'" + textinput.Text + "%'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    admins.DataSource = ds.Tables[0];
                    admins.DataBind();
                }
            }
            return ds;
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            DataSet ds = Bind();

            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    admins.Visible = true;
                    textinput.Text = "";
                }
                else
                {
                    admins.Visible = false;
                    textinput.Text = "";
                    ErrMsg.InnerText = "No Landlord is searched.";
                }
            }
        }
    }
}