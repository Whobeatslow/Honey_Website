<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="balsitesi.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 60px;
            width: 1250px;
        }
        .auto-style2 {
            width: 150px;
            height: 400px;
        }
        
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            font-weight: bold;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            
        </div>
    <div style="width:1250px;height:400px">
        <div style="margin-left:300px;margin-right:300px; height:400px; width:650px">
            <table class="auto-style3">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>KULLANICI ADI:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>ŞİFRE:</strong></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Height="50px" OnClick="Button1_Click" Text="Giriş Yap" Width="200px" />
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <a href="Admin.aspx?loginid=1"><asp:Label ID="Label1" runat="server" Text="Admin Paneline Git"></asp:Label></a>
                    </td>
                </tr>
            </table>
        </div>

        <div class="auto-style2">
        <div class="auto-style2"; style="margin-left:1100px;"></div>
        
        
    
    <div>

    </div>
         </div>
        </div>
    </form>
        <div class="auto-style1">
            
        </div>
    </body>
</html>
