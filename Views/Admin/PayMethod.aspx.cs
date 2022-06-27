using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Admin
{
    public partial class PayMethod : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            LoggedUser.InnerText = Session["UserName"] as string;
            Text1.Attributes.Add("disabled", "disabled");
            Text4.Attributes.Add("disabled", "disabled");
            Text2.Attributes.Add("disabled", "disabled");
            Text3.Attributes.Add("disabled", "disabled");
            Text5.Attributes.Add("disabled", "disabled");
            Text6.Attributes.Add("disabled", "disabled");
            UpdateBtn.Attributes.Add("disabled", "disabled");
            DeleteBtn.Attributes.Add("disabled", "disabled");
            showt();
        }
        private void ShowPmet()
        {
            string Query = "select Id as ID, Owner, Method1, Method1info as Info, Method2, Method2info as Info, Method3, Method3info as Info from paymet";
            ShowP.DataSource = Con.GetData(Query);
            ShowP.DataBind();
        }
        private void showt()
        {
            string tt = Session["UserName"] as string;
            string Query = "select Fname as FirstName, Lname as LastName from Admins where Uname='" + tt + "'";
            showtt.DataSource = Con.GetData(Query);
            showtt.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (ShowP.SelectedRow != null)
                {
                    ErrMsg.InnerText = "FAILED TO SAVE DATA";
                    ShowP.SelectedIndex = -1;
                }
                else
                {
                    if(chka.Checked || chkb.Checked || chkc.Checked){ 
                    string Owner = ownerss.Value;
                    string Method1 = Text4.Value;
                    string Method1info = Text1.Value;
                    string Method2 = Text2.Value;
                    string Method2info = Text6.Value;
                    string Method3 = Text3.Value;
                    string Method3info = Text5.Value;
                    string Query = "insert into paymet values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                    Query = string.Format(Query, Owner, Method1, Method1info, Method2, Method2info, Method3, Method3info);
                    Con.setData(Query);
                    ShowPmet();
                    Text1.Value = "On Hand";
                    Text2.Value = "On Hand";
                    Text3.Value = "On Hand";
                    Text4.Value = "On Hand";
                    Text5.Value = "On Hand";
                    Text6.Value = "On Hand";
                    ErrMsg.InnerText = "SAVE SUCCESSFULLY!";
                    chka.Checked = false;
                    chkb.Checked = false;
                    chkc.Checked = false;
                        string message = "SAVE SUCCESSFULLY!";
                        string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    }
                    else
                    {
                        ErrMsg.InnerText = "FAILED TO SAVE DATA";
                        string messages = "FAILED TO SAVE DATA. Please check box to save data";
                        string scripts = "window.onload = function(){ alert('"; scripts += messages; scripts += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", scripts, true);
                    }
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.ToString();
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (ShowP.SelectedRow == null)
                {
                    ErrMsg.InnerText = "FAILED TO UPDATE DATA";
                }
                else
                {
                    if (chka.Checked || chkb.Checked || chkc.Checked) { 
                    string Owner = ownerss.Value;
                    string Method1 = Text4.Value;
                    string Method1info = Text1.Value;
                    string Method2 = Text2.Value;
                    string Method2info = Text6.Value;
                    string Method3 = Text3.Value;
                    string Method3info = Text5.Value;
                    string Query = "update paymet set Owner='{0}', Method1='{1}', Method1info='{2}', Method2='{3}', Method2info='{4}', Method3='{5}', Method3info='{6}' where Id={7}";
                    Query = string.Format(Query, Owner, Method1, Method1info, Method2, Method2info, Method3, Method3info, ShowP.SelectedRow.Cells[1].Text);
                    Con.setData(Query);
                    ShowPmet();
                    Text1.Value = "On Hand";
                    Text2.Value = "On Hand";
                    Text3.Value = "On Hand";
                    Text4.Value = "On Hand";
                    Text5.Value = "On Hand";
                    Text6.Value = "On Hand";
                    ErrMsg.InnerText = "UPDATE SUCCESSFULLY!";
                    chka.Checked = false;
                    chkb.Checked = false;
                    chkc.Checked = false;
                    ShowP.SelectedIndex = -1;
                    ownerss.Attributes.Remove("disabled");
                    SaveBtn.Attributes.Remove("disabled");
                        string message = "UPDATE SUCCESSFULLY!";
                        string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    }
                    else
                    {
                        UpdateBtn.Attributes.Remove("disabled");
                        DeleteBtn.Attributes.Remove("disabled");
                        ErrMsg.InnerText = "FAILED TO UPDATE DATA";
                        string messages = "FAILED TO UPDATE DATA. Please check box to update data";
                        string scripts = "window.onload = function(){ alert('"; scripts += messages; scripts += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", scripts, true);
                    }
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.ToString();
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(ShowP.SelectedRow == null)
                {
                    ErrMsg.InnerText = "FAILED TO DELETE DATA";
                }
                else
                {
                    string Query = "delete from paymet where Id = {0}";
                    Query = string.Format(Query, ShowP.SelectedRow.Cells[1].Text);
                    Con.setData(Query);
                    ShowPmet();
                    Text1.Value = "On Hand";
                    Text2.Value = "On Hand";
                    Text3.Value = "On Hand";
                    Text4.Value = "On Hand";
                    Text5.Value = "On Hand";
                    Text6.Value = "On Hand";
                    ErrMsg.InnerText = "DELETE SUCCESSFULLY!";
                    chka.Checked = false;
                    chkb.Checked = false;
                    chkc.Checked = false;
                    ShowP.SelectedIndex = -1;
                    ownerss.Attributes.Remove("disabled");
                    SaveBtn.Attributes.Remove("disabled");
                    string message = "DELETE SUCCESSFULLY!";
                    string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.ToString();
            }
        }

        protected void ShowP_SelectedIndexChanged(object sender, EventArgs e)
        {
            ownerss.Value = ShowP.SelectedRow.Cells[2].Text;
            Text4.Value = ShowP.SelectedRow.Cells[3].Text;
            Text1.Value = ShowP.SelectedRow.Cells[4].Text;
            Text2.Value = ShowP.SelectedRow.Cells[5].Text;
            Text6.Value = ShowP.SelectedRow.Cells[6].Text;
            Text3.Value = ShowP.SelectedRow.Cells[7].Text;
            Text5.Value = ShowP.SelectedRow.Cells[8].Text;
            chka.Checked = false;
            chkb.Checked = false;
            chkc.Checked = false;
            ownerss.Attributes.Add("disabled", "disabled");
            UpdateBtn.Attributes.Remove("disabled");
            DeleteBtn.Attributes.Remove("disabled");
            SaveBtn.Attributes.Add("disabled", "disabled");
        }

        protected void showtt_SelectedIndexChanged(object sender, EventArgs e)
        {
            USERR.Value = showtt.SelectedRow.Cells[1].Text + " " + showtt.SelectedRow.Cells[2].Text;
            fname.Value = showtt.SelectedRow.Cells[1].Text;
            lname.Value = showtt.SelectedRow.Cells[2].Text;
            showtt.Attributes.Add("hidden", "hidden");
            ShowPmet();
            ownerss.Value = fname.Value + " " + lname.Value;
        }
    }
}