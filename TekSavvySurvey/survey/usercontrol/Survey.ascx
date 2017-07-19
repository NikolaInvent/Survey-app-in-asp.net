<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Survey.ascx.cs" Inherits="TekSavvySurvey.survey.usercontrol.Survey" %>
<style type="text/css">
    .auto-style1 {
        width: 111px;
    }
</style>

<p>
    &nbsp;</p>
<table style="width:100%;">
    <tr>
        <td class="auto-style1">Enter Survey Title</td>
        <td>
            <asp:TextBox ID="surveytxt" runat="server" ValidationGroup="surveyvalidation"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="surveytxt" ErrorMessage="Please Enter Survey Title" ForeColor="Red" ValidationGroup="surveyvalidation">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Is Active</td>
        <td>
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Survey" ValidationGroup="surveyvalidation" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<p>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
</p>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" ValidationGroup="surveyvalidation" />

