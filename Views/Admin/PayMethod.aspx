<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PayMethod.aspx.cs" Inherits="hfrms.Views.Admin.PayMethod" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">ADMIN :</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
                <div class="row">
                    <div class="col">
                        <div class="row mb-3">
                            <div class="col-4"></div>
                            <div class="col"><h1 class="text-center" style="border:outset"><strong>TRANSACTION METHODS</strong></h1></div>
                            <div class="col-2"></div>
                            <div class="row">
                                        <script type="text/javascript">
        function toggleCheckBox2(chka) {
            var textbox2 = document.getElementById('<%=Text4.ClientID%>');
            var textbox3 = document.getElementById('<%=Text1.ClientID%>');

            if (chka.checked) {
                textbox2.disabled = false;
                textbox3.disabled = false;
            }
            else {
                textbox2.disabled = true;
                textbox3.disabled = true;
            }
        }
        </script>
                                        <script type="text/javascript">
        function toggleCheckBox3(chka) {
            var textbox2 = document.getElementById('<%=Text2.ClientID%>');
            var textbox3 = document.getElementById('<%=Text6.ClientID%>');

            if (chka.checked) {
                textbox2.disabled = false;
                textbox3.disabled = false;
            }
            else {
                textbox2.disabled = true;
                textbox3.disabled = true;
            }
        }
        </script>
                                        <script type="text/javascript">
        function toggleCheckBox4(chka) {
            var textbox2 = document.getElementById('<%=Text3.ClientID%>');
            var textbox3 = document.getElementById('<%=Text5.ClientID%>');

            if (chka.checked) {
                textbox2.disabled = false;
                textbox3.disabled = false;
            }
            else {
                textbox2.disabled = true;
                textbox3.disabled = true;
            }
        }
        </script>
                                    </div>
                            <div class="col-3">
                                <div class="mb-3" id="ba">
                                    <div hidden>
    <label for="USERR" class="form-label">USERR</label>
    <input type="text" class="form-control" id="USERR" runat="server" required="required">
                            <div class="mb-2"><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="fname" runat="server" required="required"></div>
                                        <div class="mb-2"><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="lname" runat="server" required="required"></div>
  </div>
                                <label for="owner" class="form-label">OWNER / LANDLORD NAME</label>
                                <input type="text" class="form-control" id="ownerss" runat="server" required="required()" readonly>
                                        <br />
                                    <asp:CheckBox ID="chka" runat="server" onclick="toggleCheckBox2(this)"/> <label for="chk1">ADD PAYMENT METHOD 1</label>
                                    <input type="text" class="form-control" id="Text4" runat="server" value="On Hand" required="required()">
                                    <label for="dt1" class="form-label">DETAIL</label>
                                    <input type="text" class="form-control" id="Text1" runat="server" value="On Hand" required="required()">
                                        <br />
                                    <asp:CheckBox ID="chkb" runat="server" onclick="toggleCheckBox3(this)"/> <label for="chk2">ADD PAYMENT METHOD 2</label>
                                    <input type="text" class="form-control" id="Text2" runat="server" value="On Hand" required="required()">
                                    <label for="dt2" class="form-label">DETAIL</label>
                                    <input type="text" class="form-control" id="Text6" runat="server" value="On Hand" required="required()">
                                        <br />
                                    <asp:CheckBox ID="chkc" runat="server" onclick="toggleCheckBox4(this)"/> <label for="chk3">ADD PAYMENT METHOD 3</label>
                                    <input type="text" class="form-control" id="Text3" runat="server" value="On Hand" required="required()">
                                    <label for="dt3" class="form-label">DETAIL</label>
                                    <input type="text" class="form-control" id="Text5" runat="server" value="On Hand" required="required()">
                                    </div>
                                <label id="ErrMsg" runat="server" class="text-danger"></label>
        <div class="col mb-2">
                   <asp:Button ID="SaveBtn" runat="server" Text="Save" class="btn btn-success btn-block" OnClick="SaveBtn_Click" Width="95px"/> <asp:Button ID="UpdateBtn" runat="server" Text="Update" class="btn btn-warning btn-block" OnClick="UpdateBtn_Click" Width="95px"/> <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" Width="95px"/>
             </div>
                                </div>
                            <div class="col">
                                <asp:GridView ID="ShowP" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="ShowP_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2">
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
                <div class="row">
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
            </div>
        </div>
</asp:Content>
