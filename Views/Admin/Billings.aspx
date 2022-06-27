<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Billings.aspx.cs" Inherits="hfrms.Views.Admin.Users"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">


    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">ADMIN :</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
        <div class="row">
            <div class="col-4"></div>
            <div class="col"><h1 class="text-center" style="border:outset"><strong>MANAGE BOOKING / BILLS</strong></h1>
            </div>
            <div class="col-2"></div>
        </div>
        <div class="row">
            <div class="col-3">
                <form>
                    <div class="mb-3">
                        <div hidden>
    <label for="USERR" class="form-label">USERR</label>
    <input type="text" class="form-control" id="USERR" runat="server" required="required">
                            <div class="mb-2"><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="fname" runat="server" required="required"></div>
                            <div class="mb-2"><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="lname" runat="server" required="required"></div>
  </div>
                        <label for="tname" class="form-label">TENANT NAME</label> 
                        <input type="text" class="form-control" id="tname" runat="server" required="required()" readonly>
                    </div>
                    <div class="mb-3">
                        <label for="wbill" class="form-label">WATER BILL</label> 
                        <input type="text" class="form-control" id="wbill" runat="server" required="required()">
                    </div>
                    <div class="mb-3">
                        <label for="ebill" class="form-label">ELECTRIC BILL</label> 
                        <input type="text" class="form-control" id="ebill" runat="server" required="required()">
                    </div>
                    <div class="mb-3">
                        <label for="tcost" class="form-label">HOUSE COST</label> 
                        <input type="text" class="form-control" id="tcost" runat="server" required="required()" readonly>
                    </div>
                    <div class="mb-3" hidden>
                        <label for="tcost" class="form-label">DATE</label> 
                        <input type="date" class="form-control" id="today" value="<%=DateTime.Now.ToString("yyyy-MM-dd") %>" required="required()">
                    </div>
             <label id="ErrMsg" runat="server" class="text-danger"></label>
    <div  class="col">
        <div class="mb-2">
                    <asp:Button ID="setbill" runat="server" Text="Enter Bill" class="btn btn-success btn-block" OnClick="setbill_Click" />
             </div>
    </div>
</form>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col"></div>
                    <div class="col"></div>
                    <div class="col"></div>
                    <asp:GridView ID="Booking" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="Booking_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
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
                    <div class="col"></div>
                    <div class="col"><asp:GridView ID="showtt" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="showtt_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2">
                        <Columns>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
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
                    <div class="col"></div>
                </div>
            </div>
        </div>
    </div><br />
</asp:Content>
