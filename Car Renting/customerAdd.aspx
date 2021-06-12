<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="customerAdd.aspx.cs" Inherits="Car_Renting.customerAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function SayiGirme(degisken) {
            degisken = (degisken) ? degisken : window.event;
            var charCode = (degisken.which) ? degisken.which : degisken.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
    <style type="text/css">
        .auto-style3 {
            height: 26px;
            text-align: center;
        }

        .auto-style4 {
            height: 26px;
            text-align: center;
        }

        .auto-style9 {
            height: 26px;
            text-align: center;
            width: 761px;
        }
        .auto-style11 {
            height: 26px;
            text-align: left;
            width: 269px;
        }
        .auto-style12 {
            color:#660033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9"><strong>TC</strong> </td>
            <td class="auto-style11">
                <asp:TextBox ID="txt_identity" runat="server" MaxLength="11" ToolTip="TC kimlik Numarası Girin" Width="242px" onkeypress="return SayiGirme(event)"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="TC Girilmedi" ControlToValidate="txt_identity" CssClass="auto-style12"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>AD</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txt_name" runat="server" ToolTip="Ad Girin" Width="242px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ad Girilmedi" ControlToValidate="txt_name" CssClass="auto-style12"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>SOYAD</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txt_surname" runat="server" ToolTip="Soyad Girin" Width="242px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Soyad Girilmedi" ControlToValidate="txt_surname" CssClass="auto-style12"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>DOĞUM TARİHİ</strong></td>
            <td class="auto-style11">
                <asp:Calendar ID="txt_birthday" runat="server"></asp:Calendar>
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>TELEFON</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txt_phone" runat="server" TextMode="Phone" ToolTip="Telefofon Numarası Girin" Width="242px" MaxLength="11" onkeypress="return SayiGirme(event)"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Telefon Girilmedi" ControlToValidate="txt_phone" CssClass="auto-style12"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>E-MAİL</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txt_mail" runat="server" TextMode="Email" ToolTip="Email Adresi Girin" Width="242px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mail Girilmedi" ControlToValidate="txt_mail" CssClass="auto-style12"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>EHLİYET BELGE NO</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txt_licenceNo" runat="server" Width="242px" MaxLength="6"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Belge No Girilmedi" ControlToValidate="txt_licenceNo" CssClass="auto-style12"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>ADRES</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txt_address" runat="server" Height="99px" TextMode="MultiLine" ToolTip="Adres Girin" Width="242px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Adres Girilmedi" ControlToValidate="txt_address" CssClass="auto-style12"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="btn_recordCustomer" runat="server" CssClass="button" OnClick="btn_record_customer_Click" Text="Kaydet" ToolTip="Kayıt Etmek için Tıkla" Width="120px" />
            </td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
