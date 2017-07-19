<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SurveyforUser.ascx.cs" Inherits="TekSavvySurvey.UserSurvey.usercontrol.SurveyforUser" %>
<asp:GridView ShowHeader="false" AutoGenerateColumns="false" ID="GridView1" runat="server" GridLines="None">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Label runat="server" ID="Question_Id" Text='<%# Eval("Question_Id")  %>'></asp:Label>
                <asp:Label runat="server" ID="Question" Text='<%# Eval("Question")  %>'></asp:Label><br />
                <asp:RadioButton GroupName="a" Text='<%# Eval("answer1") %>' runat="server" ID="answer1" /><br />
                <asp:RadioButton GroupName="a" Text='<%# Eval("answer2") %>' runat="server" ID="answer2" /><hr />

            </ItemTemplate>
        </asp:TemplateField>

    </Columns>


</asp:GridView>
<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />