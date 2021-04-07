<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="balsitesi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center">
       <strong>BALLIZADE</strong><br/><br/>
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        &nbsp;</p>
</asp:Content>
