<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Balozellikler.aspx.cs" Inherits="balsitesi.Balozellikler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 388px;">
    <tr>
        <td style="height: 246px; width: 424px;">
            <asp:DataList ID="DataList2" runat="server" style="margin-right: 0px" Width="1015px">
                <ItemTemplate>
                    <div class="auto-style9" style="text-align: center">
                        <strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("BalAd") %>'></asp:Label>
                        </strong>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("BalOzellik") %>'></asp:Label>
                        <br />
                        <br />
                        <asp:Image ID="Image2" runat="server" Height="285px" ImageUrl='<%# Eval("BalResim") %>' Width="400px" />
                        <br />
                        <br />
                        FIYAT:<asp:Label ID="Label7" runat="server" Text='<%# Eval("BalFiyat") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>
