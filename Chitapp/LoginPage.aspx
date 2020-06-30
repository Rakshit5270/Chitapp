<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Chitapp.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Login</title>
    <link href="Styles/LoginStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/3.6.95/css/materialdesignicons.css" />
</head>
<body>
    <div class="limit">
        <div class="login-container">
            <div class="bb-login">
                <form class="bb-form validate-form" runat="server">
                    <span class="bb-form-title p-b-26">Welcome </span><span class="bb-form-title p-b-48">
                        <img src="Images/dione.png" width="120" height="auto" /></span>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is: a@b.c">
                        <asp:TextBox CssClass="input100" runat="server" ID="txtUserId" placeholder="User ID" />
                        <%--<span class="bbb-input" data-placeholder="Email"></span>--%>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Enter password">
                        <span class="btn-show-pass"><i class="mdi mdi-eye show_password"></i></span>
                        <asp:TextBox CssClass="input100" runat="server" ID="txtPassword" TextMode="Password" placeholder="Password" />
                        <%--<span class="bbb-input" data-placeholder="Password"></span>--%>
                    </div>
                    <div class="login-container-form-btn">
                        <div class="bb-login-form-btn">
                            <div class="bb-form-bgbtn"></div>
                            <button runat="server" id="btnLogin" onserverclick="btnLogin_ServerClick" class="bb-form-btn">Login</button>
                            <%--<button class="bb-form-btn">Login </button>--%>
                        </div>
                        <%--<asp:HyperLink ID="hyperlink1"
                            NavigateUrl="ForgotPassPage.aspx"
                            Text="Forgot Password"
                            runat="server" />--%>
                    </div>
                    <div class="text-center p-t-115"><span class="txt1 font-weight-bold"> Chit-Fund Solutions </span></div>
                </form>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            var showPass = 0;
            $('.btn-show-pass').on('click', function () {
                if (showPass == 0) {
                    $(this).next('input').attr('type', 'text');
                    $(this).find('i').removeClass('mdi-eye');
                    $(this).find('i').addClass('mdi-eye-off');
                    showPass = 1;
                }
                else {
                    $(this).next('input').attr('type', 'password');
                    $(this).find('i').addClass('mdi-eye');
                    $(this).find('i').removeClass('mdi-eye-off');
                    showPass = 0;
                }

            });
        });
    </script>
</body>
</html>
