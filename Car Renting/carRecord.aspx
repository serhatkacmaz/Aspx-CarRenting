<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="carRecord.aspx.cs" Inherits="Car_Renting.carRecord1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 80px;
        }
        .auto-style4 {
            margin-left: 160px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
            margin-left: 80px;
        }
        .auto-style7 {
            margin-left: 200px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
            margin-left: 160px;
        }
        .auto-style10 {
            height: 26px;
            margin-left: 200px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            height: 26px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style11"><strong>Plaka</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Marka</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Seri</strong></td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Model</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Renk</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>KM</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yakıt</strong></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="208px">
                    <asp:ListItem>Dizel</asp:ListItem>
                    <asp:ListItem>Benzin</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Kira Ücret</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
