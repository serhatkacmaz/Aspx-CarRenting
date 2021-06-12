<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customerUpdateForm.aspx.cs" Inherits="Car_Renting.customerUpdateForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />

    <style type="text/css">
        
        .auto-style1 {
            width: 100%;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            height: 20px;
            width: 692px;
        }

        .auto-style12 {
            height: 23px;
            text-align: center;
        }

        .auto-style9 {
            height: 23px;
        }

        .auto-style13 {
            text-align: center;
            height: 26px;
        }

        .auto-style14 {
            height: 26px;
        }

        .auto-style15 {
            text-align: right;
        }
        .auto-style21 {
            color: #FF3300;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: lightgrey; margin-left: 300px; margin: 100px;">
            <div class="auto-style8">
                <br />
            </div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">TC ARA</td>
                    <td>
                        <asp:TextBox ID="txt_identity" runat="server" TextMode="Search" Width="200px" MaxLength="11"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7" colspan="2">
                        <div class="auto-style8">
                            &nbsp;<br />
                        </div>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">AD</td>
                    <td>
                        <asp:TextBox ID="txt_name" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" CssClass="auto-style21" ErrorMessage="Ad Giriniz"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">SOYAD</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txt_surname" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_surname" CssClass="auto-style21" ErrorMessage="Soyad Giriniz"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">TELEFON</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txt_phone" runat="server" Width="200px" MaxLength="11"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_phone" CssClass="auto-style21" ErrorMessage="Telefon Giriniz"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">E MAİL</td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txt_mail" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_mail" CssClass="auto-style21" ErrorMessage="Mail Giriniz"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">ADRES</td>
                    <td>
                        <asp:TextBox ID="txt_address" runat="server" Height="98px" TextMode="MultiLine" Width="203px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_address" CssClass="auto-style21" ErrorMessage="Adres Giriniz"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15" colspan="2">
                        <asp:Button ID="btn_Update" runat="server" Text="Güncelle" Class="" OnClick="btn_Update_Click" />
                    </td>
                </tr>
            </table>
            <br />
        </div>
    </form>
</body>
</html>
