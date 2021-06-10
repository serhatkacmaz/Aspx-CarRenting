<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Car_Renting.homePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
            width: 1180px;
        }
        .auto-style6 {
            width: 38px;
        }
        .auto-style9 {
            width: 181px;
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style11 {
            text-align: left;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style15 {
            width: 1195px;
        }
        .auto-style16 {
            width: 191px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style19 {
            width: 255px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style20 {
            width: 232px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style21 {
            width: 177px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style22 {
            width: 200px;
            text-align: left;
            color: #FFFFFF;
        }
        .auto-style23 {
            width: 239px;
            text-align: left;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5">
            <div class="auto-style15">
                <div>
                    <table>
                        <tr>
                            <td class="auto-style23" > Plaka</td>
                            <td class="auto-style19"> Marka</td>
                            <td class="auto-style20"> Model</td>
                            <td class="auto-style21"> Araç Durumu</td>
                            <td class="auto-style22"> Kiralama Başlangıç</td>
                            <td class="auto-style16"> Kiralama Bitiş</td>
                            <td class="auto-style9"> İşlem </td>
                        </tr>
                    </table>
            </div>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:DataList ID="DataList1" runat="server" Width="1181px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style11">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("plaka") %>'></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("marka") %>'></asp:Label>
                          
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("aracDurum") %>'></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("kiralamaBaslangic") %>'></asp:Label>
                            </td>
                            <td class="auto-style11">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("kiralamaBitis") %>'></asp:Label>
                            </td>
                            <td class="auto-style12">
                                </asp:Label>
                            </td>
                           
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
</table>
</asp:Content>