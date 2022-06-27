using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views
{
    public partial class Registration : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            Button1.Attributes.Add("disabled", "disabled");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=JAYCIE;Initial Catalog=hfrms;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Select count(*) from Admins where Uname= @Uname", con);
                cmd.Parameters.AddWithValue("@Uname", uname.Value);
                con.Open();
                var result = (int)cmd.ExecuteScalar() > 0;
                if (result)
                {
                    ErrMsg1.InnerText = "*Username already exist*";
                    chk.Checked = false;
                    ErrMsg2.InnerText = "";
                }
                else if (psw.Value.Length != 8)
                {
                    ErrMsg2.InnerText = "*Password must be atleast 8*";
                    chk.Checked = false;
                    ErrMsg1.InnerText = "";
                }
                else
                {
                    string Fname = fname.Value;
                    string Lname = lname.Value;
                    string Uname = uname.Value;
                    string Email = email.Value;
                    string Contact = contact.Value;
                    string Pass = psw.Value;
                    string Query = "insert into Admins values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, Fname, Lname, Uname, Email, Contact, Pass);
                    Con.setData(Query);
                    string message = "Register successful.";
                    string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    fname.Value = "";
                    lname.Value = "";
                    uname.Value = "";
                    email.Value = "";
                    contact.Value = "";
                    psw.Value = "";
                    ErrMsg1.InnerText = "";
                    ErrMsg2.InnerText = "";
                    chk.Checked = false;
                }
            }
            catch (Exception Ex)
            {
                
            }
        }
    }
}