<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Users/UserMaster.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="hfrms.Views.Users.Booking" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">
    <style>
        body{
            overflow:hidden;
        }
        html {
  scroll-behavior: smooth;
        }
    </style>
    <div class="container-fluid" id="rawr1">
        <br />
        <div class="row">
            <div class="col">
                <div class="row">
                    <div class="col-4"></div>
                    <div class="col"><h1 class="text-success text-center" style="border:outset"><strong>AVAILABLE HOUSES</strong></h1></div>
                    <div class="col-2"></div>
                    <div class="row">
                        <div class="col-3">
                            <div class="mb-3"> <label for="landl" class="form-label">LANDLORD</label> <input type="text" class="form-control" id="landl" runat="server" required="required()" readonly> </div>
                            <div class="mb-3"> <label for="RoomTb" class="form-label">HOUSE NAME</label> <input type="text" class="form-control" id="RoomTb" runat="server" required="required()" readonly> </div>
                                <div class="mb-3"> <label for="Remarks" class="form-label">COST</label> <input type="text" class="form-control" id="Cost" runat="server" required="required()" readonly> </div>
                                <div class="mb-3"> <label for="Status" class="form-label">STATUS</label> <input type="text" class="form-control" id="Status" runat="server" required="required()" readonly> </div>
                                <div class="mb-3"> <label for="lname" class="form-label">BOOK DATE</label> <input type="date" class="form-control" id="today" required="required" value="<%=DateTime.Now.ToString("yyyy-MM-dd") %>" readonly /> </div>
                            <br />
                            <label id="ErrMsg" runat="server" class="text-danger"></label>
                            <strong><a href="#rawr2" class="btn btn-success btn-block">Book House</a></strong>
                        </div>

                        <div class="col">
                            <asp:GridView ID="RoomsGV" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" OnSelectedIndexChanged="RoomsGV_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2">
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
                    </div>
            </div>
        </div>
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="row mb-4">
                    <div class="col-3"></div>
                    <div class="col"><h1 class="text-success text-center" style="border:outset"><strong>BOOKING REGISTRATION</strong></h1></div>
                    <div class="col-3"></div>
            </div>
        <div class="row">
            <div class="col"></div>
            <div class="col">
                    <div class="mb-3">
                        <label for="fname" class="form-label"><b>First Name</b></label>
    <input type="text" class="form-control" id="Text1" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="lname" class="form-label"><b>Last Name</b></label>
    <input type="text" class="form-control" id="Text2" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="uname" class="form-label"><b>Username</b></label> <strong class="text-center"><label id="ErrMsg1" class="text-danger text-center" runat="server" ></label></strong>
    <input type="text" class="form-control" id="uname" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="psw" class="form-label"><b>Password</b></label> <strong class="text-center"><label id="ErrMsg2" class="text-danger text-center" runat="server" ></label></strong>
    <input type="password" class="form-control" id="pass" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label"><b>Email</b></label>
    <input type="email" class="form-control" id="email" runat="server" required>
                    </div>
                </div>
            <div class="col">
                    <div class="mb-3">
                        <label for="contact" class="form-label"><b>Contact</b></label>
    <input type="number" class="form-control" id="contact" runat="server" required>
                    </div>
                    <div class="mb-3" id="rawr2">
                        <label for="Gender" class="form-label"><b>Gender</b></label>  <strong class="text-center"><label id="ErrMsg3" class="text-danger text-center" runat="server" ></label></strong>
                        <asp:DropDownList ID="gend" runat="server" class="form-control" >
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label for="contact" class="form-label"><b>Birthday</b></label>
    <input type="date" class="form-control" id="birth" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="contact" class="form-label"><b>Age</b></label>
    <input type="number" class="form-control" id="age" runat="server" required>
                    </div>
                    <asp:CheckBox ID="chk" runat="server" onclick="toggleCheckBox(this)" /> <label for="chk">Check to confirm</label>
                    <div class="row mb-3">
                <div class="col mb-2">
                    <asp:Button ID="Button1" runat="server" Text="REGISTER" class="btn btn-success btn-block" Width="200px" OnClick="Button1_Click"/> 
                    <br />
                    <br />
                    <button onclick="scrollToTop()" class="btn-success btn-block">Back</button>
    <script>
        function scrollToTop() {
            window.scrollTo(0, 0);
        }
    </script>
                    <script>
                        function toggleCheckBox(chk) {
                            var textbox = document.getElementById('<%=Button1.ClientID%>');
                            if (chk.checked) {
                                textbox.disabled = false;
                            }
                            else {
                                textbox.disabled = true;
                            }
                        }
                    </script>
                </div>
                    </div>
            </div>
            <div class="col"></div>
        </div>
        <br />
        </div>
</asp:Content>