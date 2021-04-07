<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="BalDuzenle.aspx.cs" Inherits="balsitesi.BalDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 205px; height: 23px"></td>
            <td class="auto-style9" style="width: 235px"></td>
        </tr>
        <tr>
            <td style="text-align: right; width: 205px;"><strong>BAL ADI:</strong></td>
            <td style="width: 235px">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; width: 205px;"><strong>BAL ÖZELLİĞİ:</strong></td>
            <td style="width: 235px">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="150px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 205px; text-align: right;"><strong>BAL GÖRÜNTÜSÜ:</strong></td>
            <td style="width: 235px">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="75px" ImageUrl='<%# Eval("BalResim") %>' Width="225px" />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td style="width: 205px; height: 28px; text-align: right;"><strong>BAL FİYATI:</strong></td>
            <td style="height: 28px; width: 235px;">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 205px; text-align: right;"><strong>BAL ÇEŞİDİ:</strong></td>
            <td style="width: 235px">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 205px">&nbsp;</td>
            <td style="text-align: left; width: 235px"><strong>
                <asp:Button ID="BtnGuncelle" runat="server" style="font-weight: bold; font-size: medium" Text="Güncelle" Width="150px" OnClick="BtnGuncelle_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
