<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Tenant/Tenant.Master" AutoEventWireup="true" CodeBehind="HomeDet.aspx.cs" Inherits="hfrms.Views.Tenant.HomeDet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">

    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">TENANT:</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
        <div class="row mb-3">
                    <div class="col"></div>
                    <div class="col"><h2 class="text-primary text-center" style="border:outset"><strong>BOOKING DETAIL</strong></h2></div>
                    <div class="col"></div>
            </div>
        <div class="row mb-3">
            <div class="col-2"></div>
                    <div class="col mb-3">
                        <asp:GridView ID="GridView1" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" BorderStyle="Solid" CellSpacing="2">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                    </div>
                    <div class="col-2"></div>
        </div>
        <hr>
        <br />
        <br />
        <div class="row mb-3">
                    <div class="col"></div>
                    <div class="col"><h2 class="text-primary text-center" style="border:outset"><strong>PAYMENT METHODS</strong></h2>
                        <p style="align-items:center">----<strong>LANDLORD</strong> <asp:TextBox ID="textinput" runat="server" Width="200px"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click1" Width="75px" />---- </p>
                        <label id="ErrMsg" class="text-danger text-center" runat="server" ></label>
                    </div>
                    <div class="col"></div>
            </div>
        <div class="row">
                    <div class="col-2"></div>
                    <div class="col">
                        <asp:GridView ID="admins" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" BorderStyle="Solid" CellSpacing="2">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                    </div>
                    <div class="col-2"></div>
        </div>
        </div>
    
</asp:Content>
