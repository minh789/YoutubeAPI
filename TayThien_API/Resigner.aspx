<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resigner.aspx.cs" Inherits="TayThien_API.Resigner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<header runat="server">
 <title>Login to this random website for no apparent reason</title>
    <style>
        
        body {
            font-family: Arial, Helvetica, sans-serif;
            height: 525px;
            width: 1311px;
        }

        * {
            box-sizing: border-box;
        }
                /* style the container */
        .container {
            position: center;
            border-radius: 30px;
            background-color: #a0e0d6;
            padding: 20px 0 30px 0;
            top: 0px;
            left: 0px;
            height: 200px;
            width: 943px;
            margin-left: auto;
            margin-right: auto;
        } 

        input,
        .loginBtn {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 4px;
            margin: 5px 0;
            opacity: 0.85;
            display: inline-block;
            line-height: 20px;
            
        }

        input{
            border-radius: 20px;
            font-size: 40px;
        }

        input:hover,
        .btn:hover {
            opacity: 1;
        }


        /* style the submit button */
        .loginBtn {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }

        .loginBtn:hover {
            background-color: #45a049;
        }

        .loginFormLabel{
            font-size: 40px;
        }

        .auto-style1 {
            height: 82px;
        }

        .registerBtn{
            font-size: 20px;
            color: black;
        }

        .auto-style2 {
            height: 82px;
            width: 412px;
        }
        .auto-style3 {
            width: 412px;
        }

    </style>
</header>
<body>
    <form id="form1" runat="server">
    <table class="container" style="text-align: center;">
        <tr>
            <td colspan="2">
                    &nbsp;<asp:Label ID="websiteLb" runat="server" Text="Tây Thiên" style='font-size:30px; margin-left: auto; margin-right: auto;'></asp:Label>
            </td>
        </tr>
            <tr>
                <td style="text-align: right" class="auto-style2">
                    <asp:Label ID="usernameLB" runat="server" Text="Username: " CssClass="loginFormLabel"></asp:Label>
                </td>
                <td style="text-align: left;" class="auto-style1">
                    <asp:TextBox ID="usernameTB" runat="server" Width="449px" placeholder="Nhập tên tài khoản" ></asp:TextBox>
                </td>

            </tr>                   
            <tr>
                <td style="text-align: right" class="auto-style3">
                    <asp:Label ID="passLb" runat="server" Text="Mật khẩu: " CssClass="loginFormLabel" ></asp:Label>
                </td>
                <td style="text-align: left;">
                    <asp:TextBox ID="passInput" runat="server" TextMode="Password" Width="449px " placeholder="Nhập mật khẩu"></asp:TextBox>
                </td>
            </tr>

          <tr>
                <td style="text-align: right" class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Xác nhận lại mật khẩu: " CssClass="loginFormLabel" ></asp:Label>
                </td>
                <td style="text-align: left;">
                    <asp:TextBox ID="ConfirmPasswordTB" runat="server" TextMode="Password" Width="449px " placeholder="Nhập lại mật khẩu"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button class="loginBtn" runat="server" Text="Đăng ký" Height="80px" OnClick="loginBtn_Click" Width="500px" />
                </td>
            </tr>

                <td colspan="2" style="text-align: center">
                         <h4>
                        <asp:Label ID="lblThongBao" runat="server" Text=""></asp:Label>
                        </h4>               
                </td>
            </tr>
    </table>
    </form>
</body>
</html>
