using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hfrms.Views.Admin
{
    public partial class Rooms : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            LoggedUser.InnerText = Session["UserName"] as string;
            SaveBtn.Attributes.Remove("disabled");
            UpdateBtn.Attributes.Add("disabled", "disabled");
            DeleteBtn.Attributes.Add("disabled", "disabled");
            StatCb.Attributes.Add("disabled", "disabled");
            showt();
        }
        private void ShowRooms()
        {
            string oner = USERR.Value;
            string Query = "select RId as 'House ID', RName as 'Room Name', Owner as Landlord, RLocation as Location, RRemarks as Remarks, RCost as Cost, Status as Status from Room where Owner='"+oner+"'";
            RoomsGV.DataSource = Con.GetData(Query);
            RoomsGV.DataBind();

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
                if (RoomsGV.SelectedRow != null)
                {
                    ErrMsg.InnerText = "FAILED TO SAVE DATA!";
                }
                else
                {
                    string RName = RoomNumTB.Value;
                    string Owner = ownerss.Value;
                    string RCost = RoomCostTB.Value;
                    string RRemarks = RemarksTB.Value;
                    string Status = StatCb.SelectedValue.ToString();
                    string RLocation = RoomLocTB.Value;
                    string Query = "insert into Room values('{0}','{1}','{2}','{3}','{4}','{5}')";
                    Query = string.Format(Query, RName, Owner, RCost, RRemarks, Status, RLocation);
                    Con.setData(Query);
                    ShowRooms();
                    ErrMsg.InnerText = "HOUSE INFORMATION SAVED!";
                    RoomNumTB.Value = "";
                    RoomCostTB.Value = "";
                    RemarksTB.Value = "";
                    RoomLocTB.Value = "";
                    RoomsGV.SelectedIndex = -1;
                    string message = "HOUSE INFORMATION SAVED!";
                    string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.ToString();
            }
        }
        
        int Key = 0;
        protected void RoomsGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            Key = Convert.ToInt32(RoomsGV.SelectedRow.Cells[1].Text);
            RoomNumTB.Value = RoomsGV.SelectedRow.Cells[2].Text;
            ownerss.Value = RoomsGV.SelectedRow.Cells[3].Text;
            RoomCostTB.Value = RoomsGV.SelectedRow.Cells[6].Text;
            RemarksTB.Value = RoomsGV.SelectedRow.Cells[5].Text;
            StatCb.SelectedValue = RoomsGV.SelectedRow.Cells[7].Text;
            RoomLocTB.Value = RoomsGV.SelectedRow.Cells[4].Text;
            UpdateBtn.Attributes.Remove("disabled");
            DeleteBtn.Attributes.Remove("disabled");
            StatCb.Attributes.Remove("disabled");
            if (RoomsGV.SelectedRow == null)
            {
                
            }
            else
            {
                SaveBtn.Attributes.Add("disabled", "disabled");
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (RoomsGV.SelectedRow == null)
                {
                    ErrMsg.InnerText = "FAILED TO UPDATE DATA!";
                }
                else
                {
                    string RName = RoomNumTB.Value;
                    string Owner = ownerss.Value;
                    string RCost = RoomCostTB.Value;
                    string RRemarks = RemarksTB.Value;
                    string Status = StatCb.SelectedValue.ToString();
                    string RLocation = RoomLocTB.Value;
                    string Query = "update Room set RName='{0}',Owner='{1}',RCost='{2}',RRemarks='{3}',Status='{4}',RLocation='{5}' where RId ={6}";
                    Query = string.Format(Query, RName, Owner, RCost, RRemarks, Status, RLocation, RoomsGV.SelectedRow.Cells[1].Text);
                    Con.setData(Query);
                    ShowRooms();
                    ErrMsg.InnerText = "UPDATE SUCCESSFULLY!";
                    RoomNumTB.Value = "";
                    RoomCostTB.Value = "";
                    RemarksTB.Value = "";
                    StatCb.SelectedIndex = 0;
                    RoomLocTB.Value = "";
                    RoomsGV.SelectedIndex = -1;
                    string message = "UPDATE SUCCESSFULLY!";
                    string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
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
                if (RoomsGV.SelectedRow == null)
                {
                    ErrMsg.InnerText = "FAILED TO DELETE DATA!";
                }
                else
                {
                    string Query = "delete from Room where RId = {0}";
                    Query = string.Format(Query, RoomsGV.SelectedRow.Cells[1].Text);
                    Con.setData(Query);
                    ShowRooms();
                    ErrMsg.InnerText = "DELETE SUCCESSFULLY!";
                    RoomNumTB.Value = "";
                    RoomCostTB.Value = "";
                    RemarksTB.Value = "";
                    StatCb.SelectedIndex = 0;
                    RoomLocTB.Value = "";
                    RoomsGV.SelectedIndex = -1; 
                    string message = "DELETE SUCCESSFULLY!";
                    string script = "window.onload = function(){ alert('"; script += message; script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                }
            }
            catch (NullReferenceException Ex)
            {
                ErrMsg.InnerText = Ex.ToString();

            }
        }

        protected void showtt_SelectedIndexChanged(object sender, EventArgs e)
        {
            USERR.Value = showtt.SelectedRow.Cells[1].Text +" "+ showtt.SelectedRow.Cells[2].Text;
            fname.Value = showtt.SelectedRow.Cells[1].Text;
            lname.Value = showtt.SelectedRow.Cells[2].Text;
            showtt.Attributes.Add("hidden", "hidden");
            ShowRooms();
            ownerss.Value = fname.Value +" "+ lname.Value;
        }
    }
}