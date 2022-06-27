using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Users
{
    public partial class Booking : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowRooms();
            Text1.Attributes.Add("disabled", "disabled");
            Text2.Attributes.Add("disabled", "disabled");
            uname.Attributes.Add("disabled", "disabled");
            pass.Attributes.Add("disabled", "disabled");
            email.Attributes.Add("disabled", "disabled");
            contact.Attributes.Add("disabled", "disabled");
            gend.Attributes.Add("disabled", "disabled");
            birth.Attributes.Add("disabled", "disabled");
            age.Attributes.Add("disabled", "disabled");
            chk.Attributes.Add("hidden", "hidden");
            Button1.Attributes.Add("disabled", "disabled");
            /**
            LoggedUser.InnerText = Session["UserName"] as string;
    */
        }

        public void ShowRooms()
        {
            /**
            USERR.Value = Session["UserName"] as string;
            SqlConnection con = new SqlConnection(@"Data Source=JAYCIE;Initial Catalog=hfrms;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select FName, LName from Tenant where Uname= @Uname", con);
            cmd.Parameters.AddWithValue("@Uname", USERR.Value);
            SqlDataReader da = cmd.ExecuteReader();
            while (da.Read())
            {
                fname.Value = da.GetValue(0).ToString();
                lname.Value = da.GetValue(1).ToString();
            }
            con.Close();
    */
            string st = "Available";
            string Query = "select RId as 'House ID', Owner as Landlord, RName as Name, RCost as Cost,RRemarks as Remarks, Status as Status from Room where Status = '" + st + "'";
            RoomsGV.DataSource = Con.GetData(Query);
            RoomsGV.DataBind();

        }

        int Key = 0;
        protected void RoomsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            Key = Convert.ToInt32(RoomsGV.SelectedRow.Cells[1].Text);
            landl.Value = RoomsGV.SelectedRow.Cells[2].Text;
            RoomTb.Value = RoomsGV.SelectedRow.Cells[3].Text;
            Cost.Value = RoomsGV.SelectedRow.Cells[4].Text;
            Status.Value = RoomsGV.SelectedRow.Cells[6].Text;
            Text1.Attributes.Remove("disabled");
            Text2.Attributes.Remove("disabled");
            uname.Attributes.Remove("disabled");
            pass.Attributes.Remove("disabled");
            email.Attributes.Remove("disabled");
            contact.Attributes.Remove("disabled");
            gend.Attributes.Remove("disabled");
            birth.Attributes.Remove("disabled");
            age.Attributes.Remove("disabled");
            chk.Attributes.Remove("hidden");
            Button1.Attributes.Remove("disabled");
        }
        private void UpdateRoom()
        {
            try
            {
                string st = "Booked";
                string Query = "update Room set Status = '{0}' where RId = '{1}'";
                Query = string.Format(Query, st, RoomsGV.SelectedRow.Cells[1].Text);
                Con.setData(Query);
                ShowRooms();
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (RoomsGV.SelectedRow == null)
                {
                    ErrMsg.InnerText = "REGISTRATION FAILED!";
                }
                else
                {
                    SqlConnection con = new SqlConnection(@"Data Source=JAYCIE;Initial Catalog=hfrms;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand("Select count(*) from Tenant where Uname= @Uname", con);
                    cmd.Parameters.AddWithValue("@Uname", uname.Value);
                    con.Open();
                    var result = (int)cmd.ExecuteScalar() > 0;
                    if (result)
                    {
                        ErrMsg1.InnerText = "*Username already exist*";
                        chk.Checked = false;
                        ErrMsg2.InnerText = "";
                        ErrMsg3.InnerText = "";
                    }
                    else if (pass.Value.Length <= 7)
                    {
                        ErrMsg2.InnerText = "*Password must be atleast 8*";
                        chk.Checked = false;
                        ErrMsg1.InnerText = "";
                        ErrMsg3.InnerText = "";
                    }
                    else if (gend.SelectedIndex == 0)
                    {
                        ErrMsg3.InnerText = "*Please Select Gender*";
                        chk.Checked = false;
                        ErrMsg1.InnerText = "";
                        ErrMsg2.InnerText = "";
                    }
                    else
                    {
                        string FName = Text1.Value;
                        string LName = Text2.Value;
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
                        string RId = RoomsGV.SelectedRow.Cells[1].Text;
                        string Landl = landl.Value;
                        string TFName = Text1.Value;
                        string TLName = Text2.Value;
                        var BookDate = DateTime.Now;
                        string RCost = Cost.Value;
                        string Status = "Pending";
                        string Query2 = "insert into Booking values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                        Query2 = string.Format(Query2, RId, TFName, TLName, RCost, BookDate, Landl, Status);
                        Con.setData(Query2);
                        UpdateRoom();
                        RoomsGV.SelectedIndex = -1;
                        string messages = "Register successful.";
                        string scripts = "window.onload = function(){ alert('"; scripts += messages; scripts += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", scripts, true);
                        Text1.Value = "";
                        Text2.Value = "";
                        uname.Value = "";
                        pass.Value = "";
                        email.Value = "";
                        contact.Value = "";
                        gend.SelectedIndex = -1;
                        birth.Value = "";
                        age.Value = "";
                        chk.Checked = false;
                        ErrMsg1.InnerText = "";
                        ErrMsg2.InnerText = "";
                        ErrMsg3.InnerText = "";
                    }
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.ToString();
            }
        }
    }
}