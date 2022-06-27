<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Tenant/Tenant.Master" AutoEventWireup="true" CodeBehind="TenantInfo.aspx.cs" Inherits="hfrms.Views.Tenant.TenantInfo" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">


    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">TENANT:</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
        <div class="row">
            <div class="col"></div>
            <div class="col"><h1 class="text-center" style="border:outset">MY INFORMATION</h1>
            </div>
            <div class="col"></div>
        </div>
        <div class="row">
            <div class="col-2"></div>
            <div class="col"><asp:GridView ID="Bookings" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="Bookings_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Edit"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView></div>
            <div class="col-2"></div>
        </div>
        <div class="row">
  <div class="col mb-3"></div>
  <div class="col mb-3">
      <div hidden>
      <div class="mb-2"><label for="fname" class="form-label">Tenant ID</label>
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
  <div class="col mb-3">
        <div class="mb-2"><label for="gender" class="form-label">GENDER</label>
      <asp:DropDownList ID="tgender" runat="server" class="form-control">
          <asp:ListItem>Select Gender</asp:ListItem>
      <asp:ListItem>Male</asp:ListItem>
      <asp:ListItem>Female</asp:ListItem>
          </asp:DropDownList></div>
        <div class="mb-2"><label for="bday" class="form-label">BIRTHDAY</label>
    <input type="date" class="form-control" id="tbday"  runat="server" required="required"></div>
        <div class="mb-2"><label for="age" class="form-label">AGE</label>
    <input type="number" class="form-control" id="tage"  runat="server" required="required"></div>
      <div hidden>
          <div class="mb-2"><label for="fname" class="form-label">USERNAME</label>
    <input type="text" class="form-control" id="uname" runat="server" required="required" readonly></div>
        <div class="mb-2"><label for="lname" class="form-label">PASSWORD</label>
    <input type="text" class="form-control" id="pass" runat="server" required="required" readonly></div>
          </div>
      <label id="ErrMsg" class="text-danger text-center" runat="server" ></label>
      <br />
      <asp:Button ID="UpdateBtn" runat="server" Text="Update" class="btn btn-success btn-block" OnClick="UpdateBtn_Click" Width="101px"/>
  </div>
  <div class="col mb-3"></div>
            </div>
            </div>


</asp:Content>
