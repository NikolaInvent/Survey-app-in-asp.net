<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="TekSavvySurvey.admin.usercontrol.login" %>
<style type="text/css">
    .auto-style1 {
        width: 39px;
    }
</style>

<p>
    &nbsp;</p>
<table style="width:100%;">
    <tr>
        <td class="auto-style1">Email</td>
        <td>
            <asp:TextBox ID="adminemailtxt" runat="server" ValidationGroup="loginvalidation" Width="213px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="adminemailtxt" ErrorMessage="Email required" ForeColor="#FF3300" ValidationGroup="loginvalidation">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Password</td>
        <td>
            <asp:TextBox ID="adminpasstxt" runat="server" ValidationGroup="loginvalidation" Width="213px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adminpasstxt" ErrorMessage="Password required" ForeColor="#FF3300" ValidationGroup="loginvalidation">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Validati&nbsp;</td>
    </tr>
</table>
<p>
    <asp:Label ID="resultlbl" runat="server"></asp:Label>
    <br />
</p>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="loginvalidation" />

