using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            Session["UserName"] = "";

        }
        Models.Functions Con;
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (AdminCb.Checked)
            {
                SqlConnection con = new SqlConnection(@"Data Source=JAYCIE;Initial Catalog=hfrms;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("select * from Admins where Uname='" + UsernameTb.Value + "' and Pass='" + PasswordTb.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        Session["UserName"] = UsernameTb.Value;
                        Response.Redirect("Admin/Home.aspx");
                    }
                }
                else
                {
                    ErrMsg.InnerText = "INVALID ADMIN INFORMATION!!";
                }
            }

            else if (TenantCb.Checked)
            {
                SqlConnection con = new SqlConnection(@"Data Source=JAYCIE;Initial Catalog=hfrms;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("select * from Tenant where Uname='" + UsernameTb.Value + "' and Pass='" + PasswordTb.Value + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dta = new DataTable();
                sda.Fill(dta);

                if (dta.Rows.Count > 0)
                {
                    for (int i = 0; i < dta.Rows.Count; i++)
                    {
                        Session["UserName"] = UsernameTb.Value;
                        Response.Redirect("Tenant/Home.aspx");
                    }
                }
                else
                {
                    ErrMsg.InnerText = "INVALID TENANT INFORMATION!!";
                }
            }
            
        }
    }
}