<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Tenants.aspx.cs" Inherits="hfrms.Views.Admin.Tenants" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">


    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">ADMIN :</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
        <div class="row mb-4">
            <div class="col"></div>
            <div class="col"><h1 class="text-center" style="border:outset"><strong>TENANTS</strong></h1>
            </div>
            <div class="col"></div>
        </div>
        <div class="row">
            <div class="col-2"></div>
            <div class="col">
                <asp:GridView ID="UserssGV" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" BorderStyle="Solid" CellSpacing="2" Width="962px">
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
    <br />


</asp:Content>
