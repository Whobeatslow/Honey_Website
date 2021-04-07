<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Detay.aspx.cs" Inherits="balsitesi.Detay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px" Width="450px">
        <ItemTemplate>
            <h3 style="text-align: center">
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("BalAd") %>'></asp:Label>
            </h3>
            <br />
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("BalOzellik") %>'></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="175px" ImageUrl='<%# Eval("BalResim") %>' Width="428px" />
            <br />
            <br />
            <h4 style="text-align: center">Fiyat:
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("BalFiyat") %>'></asp:Label>
            </h4>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
