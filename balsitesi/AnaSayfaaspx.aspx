<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfaaspx.aspx.cs" Inherits="balsitesi.AnaSayfaaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
    <asp:DataList ID="DataList2" runat="server" Width="1015px" style="margin-right: 0px">
        <ItemTemplate>
            

            <div style="text-align: center">
                <br />
                <asp:Image ID="Image1" runat="server" Height="280px" ImageUrl='<%# Eval("BalResim") %>' style="margin-left: 0px" Width="400px" />
                <br />
                <strong><a href='Detay.aspx?Balid=<%# Eval("Balid") %>'>
                <asp:Label ID="Label5" runat="server" style="font-size: x-large" Text='<%# Eval("BalAd") %>'></asp:Label>
                </a></strong>
                <br />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>
