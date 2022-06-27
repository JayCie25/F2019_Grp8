<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Tenant/Tenant.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="hfrms.Views.Tenant.Payment" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">TENANT:</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
        <div class="row">
                    <div class="col">
                        <div class="row">
                            <div class="col"></div>
                            <div class="col-5 mb-3"><h2 class="text-danger text-center" style="border:outset">PENDING PAYMENTS!</h2></div>
                            <div class="col"></div>
                            <div class="row">
                                <div class="col-2">
    <div hidden>
    <label for="USERR" class="form-label">USERR</label>
    <input type="text" class="form-control" id="USERR" runat="server" required="required">
    </div>
    <div class="mb-2" hidden><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="fname" runat="server" required="required">
    </div>
    <div class="mb-2" hidden><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="lname" runat="server" required="required">
    </div>
                                    
                                    <div class="mb-3"> <input type="text" class="form-control" id="wbill" runat="server" required="required()" readonly> </div>
                                <div class="mb-3"> <input type="text" class="form-control" id="ebill" runat="server" required="required()" readonly> </div>
                                <div class="mb-3"> <input type="text" class="form-control" id="hmcost" runat="server" required="required()" readonly> </div>
                                <div class="mb-3"><label for="tbill" class="form-label">TOTAL BILL</label> <input type="text" class="form-control text-center" id="tbill" runat="server" required="required()" readonly> </div>
                                    
                                </div>
                                <div class="col mb-3">
                                    <asp:GridView ID="ShowB" runat="server" class="table" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="ShowB_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        <hr />
        <div class="row mb-5">
            <div class="row mb-3">
                            <div class="col-2"></div>
                            <div class="col"><h1 class="text-center text-success" style="border:outset">PAYMENT HISTORY</h1></div>
                            <div class="col-2"></div>
                </div>
            <div class="col"><asp:GridView ID="GridView1" runat="server" class="table" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView></div>
        </div>
        </div>
</asp:Content>
