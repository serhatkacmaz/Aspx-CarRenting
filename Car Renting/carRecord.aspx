<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="carRecord.aspx.cs" Inherits="Car_Renting.carRecord1" %>

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
            margin-left: 80px;
        }

        .auto-style6 {
            height: 23px;
            margin-left: 80px;
            text-align: left;
        }

        .auto-style7 {
            margin-left: 200px;
            text-align: left;
        }

        .auto-style9 {
            height: 26px;
            margin-left: 160px;
            text-align: left;
        }

        .auto-style10 {
            height: 26px;
            margin-left: 200px;
            text-align: left;
        }

        .auto-style12 {
            height: 26px;
            text-align: center;
            width: 86px;
        }

        .auto-style13 {
            height: 23px;
            text-align: center;
            color: #000000;
            width: 86px;
        }

        .auto-style14 {
            text-align: right;
            height: 30px;
        }

        .auto-style15 {
            text-align: center;
            height: 23px;
            width: 86px;
        }

        .auto-style17 {
            text-align: center;
            width: 86px;
        }

        .auto-style18 {
            height: 23px;
            text-align: left;
            color: #0000FF;
            width: 165px;
            margin-left: 80px;
        }

        .auto-style19 {
            color: #660033;
        }

        .auto-style20 {
            text-align: center;
            width: 86px;
            height: 45px;
        }

        .auto-style21 {
            margin-left: 200px;
            text-align: left;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style1">

        <tr>
            <td class="auto-style13"><strong>Plaka</strong></td>
            <td class="auto-style6">

                <asp:TextBox ID="txt_licencePlate" runat="server" Width="200px" name="plaka"></asp:TextBox>&nbsp
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_licencePlate" runat="server" ErrorMessage="Plaka Giriniz" CssClass="auto-style19"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Marka</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_brand" runat="server" Width="200px" name="marka"></asp:TextBox>
                &nbsp
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_brand" runat="server" ErrorMessage="Marka Giriniz" CssClass="auto-style19"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Model</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_model" runat="server" Width="200px" name="marka"></asp:TextBox>
                &nbsp
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txt_model" runat="server" ErrorMessage="Model Giriniz" CssClass="auto-style19"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Tip</strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDown_type" runat="server" ViewStateMode="Enabled" Width="208px" name="tip">
                    <asp:ListItem>Otomobil</asp:ListItem>
                    <asp:ListItem>Arazi</asp:ListItem>                    
                    <asp:ListItem>İş-Seyahat</asp:ListItem>
                    <asp:ListItem>Ticari</asp:ListItem>
                    <asp:ListItem>Motorsiklet</asp:ListItem>
                    <asp:ListItem>Diğer</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Vites Tür</strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDown_gearType" runat="server" Width="208px" name="vites">
                    <asp:ListItem>Manuel</asp:ListItem>
                    <asp:ListItem>Otomatik</asp:ListItem>
                    <asp:ListItem>Yarı Otomatik</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Renk</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_color" runat="server" Width="200px" name="renk"></asp:TextBox>
                &nbsp
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txt_color" runat="server" ErrorMessage="Renk Giriniz" CssClass="auto-style19"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>KM</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_km" runat="server" Width="200px" name="renk" onkeypress="return SayiGirme(event)"></asp:TextBox>
                &nbsp
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txt_km" runat="server" ErrorMessage="Kilometre Giriniz" CssClass="auto-style19"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Yakıt</strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDown_fuel" runat="server" Height="16px" Width="208px" name="ucret">
                    <asp:ListItem>Dizel</asp:ListItem>
                    <asp:ListItem>Benzin</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Kira Ücret</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="txt_rentPrices" runat="server" Width="200px" name="ucret" onkeypress="return SayiGirme(event)"></asp:TextBox>
                &nbsp
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txt_rentPrices" runat="server" ErrorMessage="Aracın Kira Ucretini Giriniz" CssClass="auto-style19"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14" colspan="2">

                <asp:Button ID="btn_carRegister" runat="server" Text="Kaydet" OnClick="btn_carRegister_Click" UseSubmitBehavior="False" />
                <asp:Button ID="btn_carCancel" runat="server" Text="İptal Et" OnClick="btn_carCancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
