<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaDuzenle.aspx.cs" Inherits="balsitesi.HakkimizdaDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: right">HAKKIMIZDA<strong>:</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="500px" TextMode="MultiLine"></asp:TextBox>
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
