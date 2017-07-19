using System;

namespace TekSavvySurvey.UserSurvey.usercontrol
{
    public partial class select_survey : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int survey_id = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            Response.Redirect("~/");
        }
    }
}