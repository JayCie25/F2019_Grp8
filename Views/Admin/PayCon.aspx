<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PayCon.aspx.cs" Inherits="hfrms.Views.Admin.Billing" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">ADMIN :</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
                <div class="row">
                    <div class="col">
                        <div class="row mb-3">
                            <div class="col-4"></div>
                            <div class="col"><h1 class="text-center" style="border:outset"><strong>PAYMENT CONFIRMATION</strong></h1></div>
                            <div class="col-2"></div>
                            <div class="row">
                                <div class="col-3">
                                <div class="mb-3" id="aa">
                                    <div hidden>
    <label for="USERR" class="form-label">USERR</label>
    <input type="text" class="form-control" id="USERR" runat="server" required="required">
                            <div class="mb-2"><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="fname" runat="server" required="required"></div>
                                        <div class="mb-2"><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="lname" runat="server" required="required"></div>
  </div>
                                    <input type="text" class="form-control" id="wbill" runat="server" required="required()" readonly hidden>
                                    <input type="text" class="form-control" id="ebill" runat="server" required="required()" readonly hidden>
                                    <input type="text" class="form-control" id="hmcost" runat="server" required="required()" readonly hidden>
                                    <label for="tbill" class="form-label">TOTAL BILL</label> <input type="text" class="form-control" id="tbill" runat="server" required="required()" readonly> 
                                </div>
                                    <div class="mb-3" id="ab"><label for="stats" class="form-label">STATUS</label>
                            <asp:DropDownList ID="stats" runat="server" class="form-control" disabled>
                            <asp:ListItem>Paid</asp:ListItem>
                           <asp:ListItem>Pending</asp:ListItem>
                               </asp:DropDownList>
                                    </div>
                                    <div class="mb-3">
                        <label for="lname" class="form-label">CONFIRMATION DATE</label>
                        <input type="date" class="form-control" id="today" required="required" value="<%=DateTime.Now.ToString("yyyy-MM-dd") %>" disabled>
                    </div>
                                    <div class="mb-3" id="ac">
                                        <script type="text/javascript">
        function toggleCheckBox1(chk) {
            var textbox = document.getElementById('<%=Button1.ClientID%>');

            if (chk.checked) {
                textbox.disabled = false;
            }
            else {
                textbox.disabled = true;
            }
        }
        </script>
                                        <asp:CheckBox ID="chk" runat="server" onclick="toggleCheckBox1(this)"/> <label for="chk">CHECK BOX TO CONFIRM PAYMENT</label>
                                    </div>
                                <asp:Button ID="Button1" runat="server" Text="CONFIRM PAYMENT" class="btn btn-warning" OnClick="ConfirmBtn_Click1" Width="300px"/> <label id="ErrMsg" runat="server" class="text-danger"></label>
                                </div>
                                <div class="col mb-6">
                <asp:GridView ID="ShowB" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="ShowB_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2" Width="950px">
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
                                    <div class="col">
                                        <asp:GridView ID="showtt" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="showtt_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2">
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
                                    </div>
                                    <div class="col"></div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        <hr />
        <br />
        <div class="row mb-4">
            <div class="row mb-3">
                            <div class="col-2"></div>
                            <div class="col"><h1 class="text-center text-success" style="border:outset"><strong>PAYMENT CONFIRMATION HISTORY</strong></h1></div>
                            <div class="col-2"></div>
                </div>
            <div class="col"><asp:GridView ID="GridView1" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" BorderStyle="Solid" CellSpacing="2" Width="1313px">
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
        </div>
        </div>
</asp:Content>