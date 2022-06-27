<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="hfrms.Views.Users.Houses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <style>
        .container-fluid{
            opacity:0.9;

        }
        .text-success {
            text-align: center;
            font-weight:bold;
        }
    </style>
    <div class="container-fluid">
        <div class="row mb-5"></div>
                <div class="row mb-5">
                    <div class="row" style="height:20px;"></div>
                        <div class="col-4"></div>
                        <div class="col bg-light rounded-3">
                            <br />
                            <h1 class="text-success" style="border:outset"><strong>LANDLORDS</strong></h1>
                            <h2 class="text-success"><strong>List of landlords and their contact information</strong></h2>
                    </div>
                    <div class="col-4"></div>
                    <br />
                </div>
        <div class="row">
            <div class="col-3"></div>
            <div class="col">
                <asp:GridView ID="ADMINS" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" BorderStyle="Solid" CellSpacing="2">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select"></asp:LinkButton>
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
                </asp:GridView>
            </div>
            <div class="col-3"></div>
        </div>
        </div>
</asp:Content>
