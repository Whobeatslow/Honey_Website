﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="balsitesi.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC">
        <table style="width: 100%">
            <tr>
                <td style="width: 55px"><strong>
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                <td style="width: 55px"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="450px">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: left; width: 236px">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("metin") %>'></asp:Label>
                        </td>
                        <td style="text-align: right">
                           <a href="HakkimizdaAdmin.aspx?hakkimizdaid=<%#Eval("hakkimizdaid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icons/delete-sign--v2.png" Width="30px" /></a>
                        </td>
                        <td style="text-align: right">
                         <a href ="HakkimizdaDuzenle.aspx?hakkimizdaid=<%#Eval("hakkimizdaid")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icons/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Panel ID="Panel4" runat="server" style="background-color: #CCCCCC" Width="450px">
            <table style="width: 100%">
                <tr>
                    <td style="width: 55px; height: 34px;"><strong>
                        <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"/>
                        </strong></td>
                    <td style="width: 55px; height: 34px;"><strong>
                        <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td style="height: 34px">HAKKIMIZDA BÖLÜMÜ EKLE</td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <table style="width: 100%">
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td style="height: 26px">HAKKIMIZDA:</td>
                    <td style="height: 26px; text-align: left;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="300px" Height="500px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="BtnEkle" runat="server" style="font-size: 12pt; font-weight: bold" Text="EKLE" Width="100px" OnClick="BtnEkle_Click" />
                        </strong></td>
                </tr>
            </table>
        </asp:Panel>
    </asp:Panel>
</asp:Content>