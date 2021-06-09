<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="carRecord.aspx.cs" Inherits="Car_Renting.carRecord1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 80px;
        }
        .auto-style6 {
            height: 23px;
            margin-left: 80px;
        }
        .auto-style7 {
            margin-left: 200px;
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
        .auto-style13 {
            height: 23px;
            text-align: center;
            color: #000000;
        }
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            text-align: center;
            height: 23px;
        }
        .auto-style16 {
            height: 23px;
            text-align: center;
            color: #0000FF;
            width: 165px;
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td class="auto-style15"><strong>Plaka</strong></td>
            <td class="auto-style16">
                <asp:TextBox ID="txt_licencePlate" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Marka</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_brand" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Model</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="txt_model" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tip</strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDown_type" runat="server" ViewStateMode="Enabled" Width="208px">
                    <asp:ListItem>Arazi</asp:ListItem>
                    <asp:ListItem>İş-Seyahat</asp:ListItem>
                    <asp:ListItem>Spor</asp:ListItem>
                    <asp:ListItem>Ticari</asp:ListItem>
                    <asp:ListItem>Motorsiklet</asp:ListItem>
                    <asp:ListItem>Diğer</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Vites Tür</strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDown_gearType" runat="server" Width="208px">
                    <asp:ListItem>Manuel</asp:ListItem>
                    <asp:ListItem>Otomatik</asp:ListItem>
                    <asp:ListItem>Yarı Otomatik</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Renk</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="txt_color" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>KM</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_km" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Yakıt</strong></td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDown_fuel" runat="server" Height="16px" Width="208px">
                    <asp:ListItem>Dizel</asp:ListItem>
                    <asp:ListItem>Benzin</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Kira Ücret</strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txt_rentPrices" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" colspan="2">
                <asp:Button ID="btn_carRegister" runat="server" Text="Kaydet" OnClick="btn_carRegister_Click"/>
                <asp:Button ID="btn_carCancel" runat="server" Text="İptal Et" OnClick="btn_carCancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
