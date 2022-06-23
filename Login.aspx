<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="hfrms.Views.Login" EnableEventValidation="false"%>

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
        <div class="row" style="height:120px;"></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 bg-light rounded-3">
                <br />
                <h1 class="text-success" style="border:outset">HOUSE FOR RENT</h1>
                <div class="row">
                <div class="col-2"></div>
                <div class="col"><div class="mb-3">
                        <label for="UsernameTb" class="form-label">Username</label>
                        <input type="text" class="form-control" id="UsernameTb" runat="server" required>
                    </div>
                    <div class="mb-3">
                        <label for="PasswordTb" class="form-label">Password</label>
                        <input type="password" class="form-control" id="PasswordTb" runat="server" required>
                    </div>
                </div>
                <div class="col-2"></div>
                    </div>
                <div class="row">
                        <div class="col-4"></div>
                        <div class="col">
                            <input type="radio" onclick="enable()" id="AdminCb" value="1" runat="server" name="role" checked><label class="text-success">Admin</label>
                            <input type="radio" onclick="disable()" id="TenantCb" value="0" runat="server" name="role" ><label class="text-success">Tenant</label>
                        </div>
                    </div>
                    
                    <div class="mb-3">
                        <div class="row">
                            <label id="ErrMsg" class="text-danger text-center" runat="server" ></label>
                            <br />
                            <div class="col mb-2"></div> 
                            <div class="col mb-2"><asp:Button ID="LoginBtn" runat="server" Text="LOGIN" class="btn btn-success btn-block" OnClick="LoginBtn_Click" />
                            </div>
                            <div class="col mb-2"></div>
        </div>
                        <div class="row">
                            <div class="col text-center">
                                <p>Register as Admin <a href="Adreg.aspx">Sign up</a>.</p>
                                </div>
                            <div class="col text-center">
                                <p>Register as Tenant <a href="Tenreg.aspx">Sign up</a>.</p>
                            </div>
                        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
</form>
</body>
</html>
