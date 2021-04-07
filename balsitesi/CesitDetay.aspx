<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="CesitDetay.aspx.cs" Inherits="balsitesi.CesitDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div style="text-align: center">
    

   <asp:DataList ID="DataList2" runat="server" Width="1015px">
        <ItemTemplate>
            <br />
            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("BalResim") %>' Width="400px" style="margin-left: 0px" />
            <br />
            <strong><a href ="Detay.aspx?Balid=<%# Eval("Balid") %>">
            <asp:Label ID="Label5" runat="server" style="font-size: x-large" Text='<%# Eval("BalAd") %>'></asp:Label>
            </a></strong>
            <br />
            <br />
            <span class="auto-style5"><strong>FIYAT:</strong></span><asp:Label ID="Label4" runat="server" Text='<%# Eval("BalFiyat") %>'></asp:Label>
            <br />


        </ItemTemplate>
    </asp:DataList>
    </div>
</asp:Content>
