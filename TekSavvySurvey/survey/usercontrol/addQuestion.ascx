<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="addQuestion.ascx.cs" Inherits="TekSavvySurvey.survey.usercontrol.addQuestion" %>
<style type="text/css">
    .auto-style1 {
        width: 152px;
    }
    .auto-style2 {
        width: 152px;
        height: 34px;
    }
    .auto-style3 {
        height: 34px;
    }
</style>

<table style="width: 100%; height: 192px;">
    <tr>
        <td class="auto-style1">Question</td>
        <td>
            <asp:TextBox ID="qtxt" runat="server" ValidationGroup="qv" Width="437px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="qtxt" ErrorMessage="Please enter question" ForeColor="#FF3300" ValidationGroup="qv">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Option-1</td>
        <td>
            <asp:TextBox ID="optiontxt" runat="server" ValidationGroup="qv" Width="437px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="optiontxt" ErrorMessage="Please enter first option" ForeColor="#FF3300" ValidationGroup="qv">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Option-2</td>
        <td>
            <asp:TextBox ID="option2txt" runat="server" ValidationGroup="qv" Width="437px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="option2txt" ErrorMessage="Please enter second option" ForeColor="#FF3300" ValidationGroup="qv">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">Correct Option Number </td>
        <td>
            <asp:TextBox ID="coptiontxt" runat="server" ValidationGroup="qv" Width="87px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="coptiontxt" ErrorMessage="Please enter correct answer" ForeColor="#FF3300" ValidationGroup="qv">*</asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Survey_Id</td>
        <td class="auto-style3">
            <asp:TextBox ID="surtxt" runat="server" ValidationGroup="qv" Width="87px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="surtxt" ErrorMessage="Please enter surveyid" ForeColor="#FF3300" ValidationGroup="qv">*</asp:RequiredFieldValidator>
        </td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Question" ValidationGroup="qv" />
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            <asp:Label ID="resultlbl" runat="server" Text="resultlbl"></asp:Label>
        </td>
        <td class="auto-style3">&nbsp;</td>
    </tr>
</table>
<p>
    &nbsp;</p>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="qv" />
<p>
    &nbsp;</p>

