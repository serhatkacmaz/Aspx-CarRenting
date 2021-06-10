<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="carDisplay.aspx.cs" Inherits="Car_Renting.carDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
        height: 23px;
        width: 694px;
    }
    .auto-style11 {
        width: 694px;
    }
        .auto-style17 {
            width: 1081px;
            color: #0099CC;
            font-size: small;
        }
        .auto-style18 {
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style19 {
            color: #FFFFFF;
        }
        .auto-style20 {
            height: 23px;
            text-align: center;
            width: 210px;
        }
        .auto-style21 {
            height: 23px;
            text-align: left;
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1" style="width: 100%">
        <tr>
            <td class="auto-style11">
                <div class="auto-style17">
                    <span class="auto-style19">&nbsp;&nbsp;</span><span class="auto-style18">Plaka&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Marka&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Tip&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vites Türü&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Renk&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kilometre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Yakıt Türü&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Kira Ucreti</span></div>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:DataList ID="DataList1" runat="server" Width="1200px">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style21">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("plaka") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("marka") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("tip") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("vitesTur") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("renk") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("km") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("yakit") %>'></asp:Label>
                                </td>
                                <td class="auto-style21">
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("kiraUcret") %>'></asp:Label>
                                </td>
                                <td class="auto-style20">
                                    <asp:Button ID="btn_history" runat="server" Text="Tarihçe" Width="70px" OnClick="btn_history_Click" />
                                    <asp:Button ID="btn_edit" runat="server" Text="Düzenle" Width="70px" />
                                    <asp:Button ID="btn_delete" runat="server" Text="Silme" Width="70px"/>
                                
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                </td>
        </tr>
    </table>
</asp:Content>
