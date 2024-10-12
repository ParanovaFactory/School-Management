<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login_Forms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Spike Free</title>
    <link rel="shortcut icon" type="image/png" href="../Spike-bootstrap-free/src/assets/images/logos/favicon.png" />
    <link rel="stylesheet" href="../Spike-bootstrap-free/src/assets/css/styles.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
            data-sidebar-position="fixed" data-header-position="fixed">
            <div
                class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
                <div class="d-flex align-items-center justify-content-center w-100">
                    <div class="row justify-content-center w-100">
                        <div class="col-md-8 col-lg-6 col-xxl-3">
                            <div class="card mb-0">
                                <div class="card-body">
                                    <a href="./index.html" class="text-nowrap logo-img text-center d-block py-3 w-100">
                                        <img src="../Spike-bootstrap-free/assets/images/logos/dark-logo.svg" width="180" alt="">
                                    </a>
                                    <p class="text-center">School Manaegment</p>
                                    <form>
                                        <div class="mb-3">
                                            <label for="exampleInputEmail1" class="form-label">Username</label>
                                            <asp:TextBox ID="TextUSR" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <div class="mb-4">
                                            <label for="exampleInputPassword1" class="form-label">Password</label>
                                            <asp:TextBox ID="TextPASS" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                        <asp:Button ID="Button1" runat="server" Text="Sign In" class="btn btn-primary w-100 fs-4 mb-4 rounded-2"  OnClick="Button1_Click1"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="../Spike-bootstrap-free/src/assets/libs/jquery/dist/jquery.min.js"></script>
        <script src="../Spike-bootstrap-free/src/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    </form>
</body>
</html>
