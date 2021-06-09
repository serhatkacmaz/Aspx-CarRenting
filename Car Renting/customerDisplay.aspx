<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="customerDisplay.aspx.cs" Inherits="Car_Renting.customerDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        height: 23px;
        color: #FFFFFF;
        text-align: center;
    }
    .auto-style4 {
        height: 23px;
        color: #FFFFFF;
        text-align: left;
            width: 445px;
        }
        .auto-style5 {
            height: 23px;
            color: #FFFFFF;
            width: 700px;
        }
        .auto-style6 {
            height: 23px;
            color: #FFFFFF;
            text-align: left;
            margin-left: 40px;
            width: 700px;
        }
        .auto-style10 {
            height: 20px;
            width: 694px;
            background-color: #FF6666;
        }
        .auto-style15 {
            width: 1189px;
        }
        .auto-style17 {
            width: 883px;
            text-align: center;
        }
        .auto-style18 {
            height: 23px;
            width: 377px;
        }
        .auto-style19 {
            height: 23px;
            color: #FFFFFF;
            text-align: left;
            width: 573px;
        }
        .auto-style20 {
            height: 23px;
            width: 349px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style5">
            <div class="auto-style15">
                <div>
                    <strong>TC&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AD SOYAD&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TELEFON&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MAİL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADRES</strong></div>
            </div>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:DataList ID="DataList1" runat="server" Width="1181px">
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("tc") %>'></asp:Label>
                            </td>
                            <td class="auto-style17">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ad") %>'></asp:Label>
                                &nbsp;<asp:Label ID="Label3" runat="server" Text='<%# Eval("soyad") %>'></asp:Label>
                            </td>
                            <td class="auto-style19">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("telefon") %>'></asp:Label>
                            </td>
                            <td class="auto-style4">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("mail") %>'></asp:Label>
                            </td>
                            <td class="auto-style20">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("adres") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <div style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #808080">
                                </div>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <div class="auto-style10">&nbsp;<asp:Button ID="btn_customerUpdate" runat="server" Text="Güncelle" Class="" OnClick="btn_customerUpdate_Click" />
            </div>
        </td>
    </tr>
</table>
</asp:Content>
