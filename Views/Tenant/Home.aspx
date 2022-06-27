<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Tenant/Tenant.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="hfrms.Views.Tenant.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyBody" runat="server">

    <head>
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/Bootstrap/css/bootstrap.min.css" />

    <style>
        body{
            background-image:url(../Assets/images/housebg.jpg);
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

    <form id="form1">
        <div>
            <br />
            <br />
            <div class="container-fluid">
                 <div class="row" style="height:120px;"></div>
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4 bg-light rounded-3">
                            <br />
                            <h1 class="text-success" style="border:outset">HOUSE FOR RENT MANAGEMENT SYSTEM</h1>
                    <form>
                    <div class="mb-3">
    
                    </div>
                    <div class="mb-3">
    
                    </div>
                <div class="mb-3">
                    <div class="col"></div>
                    <div class="col"></div>
                    <div class="row"></div>
                    <div class="col mb-2"></div> 
                    <div class="col mb-2"></div>
                </div>
                <div class="row">
                    <div class="col mb-2"></div>
                    <div class="col mb-2"></div>
                    <div class="col mb-2"></div>
                </div>
                    </form>
            </div>
         </div>
    </form>
</body>

</asp:Content>
