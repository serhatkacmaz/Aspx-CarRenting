<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="customerAdd.aspx.cs" Inherits="Car_Renting.customerAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 26px;
            text-align: center;
            margin-left: 40px;
        }
        .auto-style4 {
            height: 26px;
            text-align: center;
        }
        .auto-style5 {
            height: 26px;
            text-align: center;
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4"><strong>TC</strong> </td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_identity" runat="server" MaxLength="11" ToolTip="TC kimlik Numarası Girin" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>AD</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_name" runat="server" ToolTip="Ad Girin" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>SOYAD</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_surname" runat="server" ToolTip="Soyad Girin" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>DOĞUM TARİHİ</strong></td>
            <td class="auto-style3">
                <asp:Calendar ID="txt_birthday" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>TELEFON</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_phone" runat="server" TextMode="Phone" ToolTip="Telefofon Numarası Girin" Width="200px" MaxLength="11"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>E-MAİL</strong></td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_mail" runat="server" TextMode="Email" ToolTip="Email Adresi Girin" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>EHLİYET BELGE NO</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_licenceNo" runat="server" Width="200px" MaxLength="6"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>ADRES</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="txt_address" runat="server" Height="99px" TextMode="MultiLine" ToolTip="Adres Girin" Width="204px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btn_recordCustomer" runat="server" CssClass="button" OnClick="btn_record_customer_Click" Text="Kaydet" ToolTip="Kayıt Etmek için Tıkla" Width="120px" />
            </td>
        </tr>
    </table>
</asp:Content>
