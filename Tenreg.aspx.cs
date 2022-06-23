using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views
{
    public partial class Tenreg : System.Web.UI.Page
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
                else if (pass.Value.Length != 8)
                {
                    ErrMsg2.InnerText = "*Password must be atleast 8*";
                    chk.Checked = false;
                    ErrMsg1.InnerText = "";
                }
                else
                {
                    string FName = fname.Value;
                    string LName = lname.Value;
                    string Uname = uname.Value;
                    string Pass = pass.Value;
                    string Email = email.Value;
                    string Contact = contact.Value;
                    string Gender = gend.SelectedValue;
                    string Birthday = birth.Value;
                    string Age = age.Value;
                    string Query = "insert into Tenant values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')";
                    Query = string.Format(Query, FName, LName, Uname, Pass, Email, Contact, Gender, Birthday, Age);
                    Con.setData(Query);
                    string message = "Register successful.";
                    string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    chk.Checked = false;
                    ErrMsg1.InnerText = "";
                    ErrMsg2.InnerText = "";
                }
            }
            catch (Exception Ex)
            {
                
            }
        }
    }
}