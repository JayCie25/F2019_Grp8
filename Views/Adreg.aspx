<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adreg.aspx.cs" Inherits="hfrms.Views.Registration" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/Bootstrap/css/bootstrap.min.css" />
<style>
        body{
            background-image:url(../Assets/images/housebg.png);
            background-size:cover;
        }
        .container-fluid{
            opacity:0.9;

        }
        .text-success {
            text-align: center;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="container-fluid">
        <div class="row" style="height:10px;"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 bg-light rounded-3">
                <br />
                <h1 class="text-success">REGISTER</h1>
                <p class="text-success text-center">Please fill in this form to create an account.</p>
                <a href="Login.aspx" style="text-decoration:none"><strong><- BACK</strong></a>
                <br />
                <br />
                <form>
                    <div class="mb-3">
                        <label for="fname" class="form-label"><b>First Name</b></label>
    <input type="text" class="form-control" id="fname" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="lname" class="form-label"><b>Last Name</b></label>
    <input type="text" class="form-control" id="lname" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="uname" class="form-label"><b>Username</b></label> <strong class="text-center"><label id="ErrMsg1" class="text-danger text-center" runat="server" ></label></strong>
    <input type="text" class="form-control" id="uname" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="psw" class="form-label"><b>Password</b></label> <strong class="text-center"><label id="ErrMsg2" class="text-danger text-center" runat="server" ></label></strong>
    <input type="password" class="form-control" id="psw" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label"><b>Email</b></label>
    <input type="email" class="form-control" id="email" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="contact" class="form-label"><b>Contact</b></label>
    <input type="number" class="form-control" id="contact" runat="server" required>
                    </div>
                    <asp:CheckBox ID="chk" runat="server" onclick="toggleCheckBox(this)" /> <label for="chk">Check to confirm</label>
                    <br />
                    <br />
                    <div class="row mb-3">
                <div class="col mb-2"></div>
                <div class="col mb-2">
                    <asp:Button ID="Button1" runat="server" Text="REGISTER" class="btn btn-success btn-block" OnClick="Button1_Click" Width="170px"/>
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
                <div class="col mb-2"></div>
                        <div class="container text-center">
                    <p>Already have an account? <a href="Login.aspx">Sign in</a>.</p>
                    </div>
                    </div>

                </form>
          </div>
      </div>
        <div class="row" style="height:10px;"></div>
    </div>
  </div>
</form>
</body>
</html>
