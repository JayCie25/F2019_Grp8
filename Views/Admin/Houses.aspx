<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Houses.aspx.cs" Inherits="hfrms.Views.Admin.Rooms" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">

    <div class="container-fluid">
        <div class="row"><strong><div class="col-md-5"</div><div class="col-md-5"></div><div class="col-md-2"><label style="font-size:20px">ADMIN :</label><label id="LoggedUser" runat="server" style="font-size:20px"></label></div></strong></div>
        <div class="row">
            <div class="col-4"></div>
            <div class="col"><h1 class="text-center" style="border:outset"><strong>MANAGE HOUSES / STATUS</strong></h1></div>
            <div class="col-2"></div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <form>
                    <div hidden>
    <label for="USERR" class="form-label">USERR</label>
    <input type="text" class="form-control" id="USERR" runat="server" required="required">
                            <div class="mb-2"><label for="fname" class="form-label">FIRST NAME</label>
    <input type="text" class="form-control" id="fname" runat="server" required="required"></div>
                        <div class="mb-2"><label for="fname" class="form-label">LAST NAME</label>
    <input type="text" class="form-control" id="lname" runat="server" required="required"></div>
  </div>
  <div class="mb-3">
    <label for="RoomNumTB" class="form-label">HOUSE NAME</label>
    <input type="text" class="form-control" id="RoomNumTB" runat="server" required="required()">
  </div>
  <div class="mb-3">
    <label for="owner" class="form-label">OWNER/LANDLORD NAME</label>
    <input type="text" class="form-control" id="ownerss" runat="server" required="required()" readonly>
  </div>
  <div class="mb-3">
    <label for="RoomLocTB" class="form-label">LOCATION</label>
    <input type="text" class="form-control" id="RoomLocTB" runat="server" required="required()">
  </div>
  <div class="mb-3">
    <label for="RemarksTB" class="form-label">REMARKS</label>
    <input type="text" class="form-control" id="RemarksTB" runat="server" required="required()">
  </div>
  <div class="mb-3">
    <label for="RoomCostTB" class="form-label">MONTHLY COST</label>
    <input type="text" class="form-control" id="RoomCostTB" runat="server" required="required()">
  </div>
  <div class="mb-3">
    <label for="StatusTB" class="form-label">STATUS</label>
      <asp:DropDownList ID="StatCb" runat="server" class="form-control" >
          <asp:ListItem>Available</asp:ListItem>
          <asp:ListItem>Booked</asp:ListItem>
      </asp:DropDownList>
  </div>
            <label id="ErrMsg" runat="server" class="text-danger text-center"></label>
               <div  class="col">
                   <div class="col mb-2">
                       <asp:Button ID="SaveBtn" runat="server" Text="Save" class="btn btn-success btn-block" OnClick="SaveBtn_Click" Width="95px" /> <asp:Button ID="UpdateBtn" runat="server" Text="Update" class="btn btn-warning btn-block" OnClick="UpdateBtn_Click" Width="95px"/> <asp:Button ID="DeleteBtn" runat="server" Text="Delete" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" Width="95px"/>
                   </div>
    </div>
</form>
            </div>
            <div class="col-md-9">
                <asp:GridView ID="RoomsGV" runat="server" class="table" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" OnSelectedIndexChanged="RoomsGV_SelectedIndexChanged" BorderStyle="Solid" CellSpacing="2" ForeColor="Black" Width="966px">
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
    <br />
</asp:Content>
