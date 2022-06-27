<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminInfo.aspx.cs" Inherits="hfrms.Views.Admin.AdminInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">


    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">ADMIN :</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
        <div class="row mb-4">
            <div class="col"></div>
            <div class="col"><h1 class="text-center" style="border:outset"><strong>MY INFORMATION</strong></h1>
            </div>
            <div class="col"></div>
        </div>
        <div class="row">
            <div class="col-3"></div>
            <div class="col"><strong><asp:GridView ID="Bookings" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" BorderStyle="Solid" CellSpacing="2">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView></strong></div>
            <div class="col-3"></div>
        </div>
        <!--<div class="row" hidden>
            
  <div class="col mb-3"></div>
  <div class="col mb-3">
      <div hidden>
      <div class="mb-2"><label for="fname" class="form-label">Admin ID</label>
    <input type="text" class="form-control" id="uid" runat="server" required="required" readonly></div>
          </div>
    <div class="mb-2"><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="fname" runat="server" required="required"></div>
        <div class="mb-2"><label for="lname" class="form-label">LAST NAME</label>
    <input type="text" class="form-control" id="lname" runat="server" required="required"></div>
        <div class="mb-2"><label for="bday" class="form-label">EMAIL</label>
    <input type="email" class="form-control" id="email"  runat="server" required="required"></div>
        <div class="mb-2"><label for="tcontact" class="form-label">CONTACT NUMBER</label>
    <input type="number" class="form-control" id="tcontact" runat="server" required="required"></div>
  </div>
  <div class="col mb-3"></div>
            </div>
        -->
        </div>


</asp:Content>
