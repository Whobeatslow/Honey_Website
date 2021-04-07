<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="CesitDuzenle.aspx.cs" Inherits="balsitesi.CesitAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>ÇEŞİT ADI:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right"><strong>ÇEŞİT AÇIKLAMA</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnGuncelle" runat="server" OnClick="BtnGuncelle_Click" style="font-weight: bold; font-size: medium" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
