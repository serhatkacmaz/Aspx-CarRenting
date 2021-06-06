<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="carDisplay.aspx.cs" Inherits="Car_Renting.carDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 33px;
            height: 23px;
            text-align: center;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            text-align: center;
        }
        .auto-style8 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                <div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PLAKA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MARKA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MODEL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KM</div>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" Width="691px">
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style7">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("licencePlate") %>'></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("brand") %>'></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("model") %>'></asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("km") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Button ID="Button3" runat="server" Text="Tarihçe" />
                                    <asp:Button ID="Button2" runat="server" Text="Düzenle" />
                                    <asp:Button ID="Button1" runat="server" Text="Silme"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7" colspan="5">
                                    <div style="border-bottom-color: #808080; border-bottom-width: thin; border-bottom-style: solid">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
