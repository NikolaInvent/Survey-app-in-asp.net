<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TekSavvySurvey.UserSurvey.Default" %>

<%@ Register src="usercontrol/SurveyforUser.ascx" tagname="SurveyforUser" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:SurveyforUser ID="SurveyforUser1" runat="server" />
    <div>
    
    </div>
    </form>
</body>
</html>
