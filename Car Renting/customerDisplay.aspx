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
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            height: 20px;
            width: 692px;
            background-color: #FF9966;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            height: 20px;
            width: 694px;
            background-color: #FF9966;
        }
        .auto-style11 {
            text-align: center;
            height: 30px;
        }
        .auto-style12 {
            height: 23px;
            text-align: center;
        }
        .auto-style13 {
            text-align: center;
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
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
            <div class="auto-style10">&nbsp;<br />
            </div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">TC ARA</td>
                    <td>
                        <asp:TextBox ID="text_identity" runat="server" TextMode="Search" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
            <div class="auto-style8">&nbsp;<br />
                        </div>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">AD</td>
                    <td>
                        <asp:TextBox ID="txt_name" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">SOYAD</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txt_surname" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">TELEFON</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txt_phone" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">E MAİL</td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">ADRES</td>
                    <td>
                        <asp:TextBox ID="txt_address" runat="server" Height="98px" TextMode="MultiLine" Width="203px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Button ID="btn_update" runat="server" Text="Güncelle" />
                    </td>
                </tr>
            </table>
            <br />
        </td>
    </tr>
</table>
</asp:Content>
