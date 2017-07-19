using System;
using System.Configuration;
using System.Data.SqlClient;

namespace TekSavvySurvey.survey.usercontrol
{
    public partial class Survey : System.Web.UI.UserControl
    {
        SqlConnection con;
        SqlCommand cmd;
        public Survey()
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            cmd = new SqlCommand();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "insert into[Survey](Title,IsActive)values(@title,@isactive)";
                cmd.Parameters.AddWithValue("@title", surveytxt.Text);
                cmd.Parameters.AddWithValue("@isactive", CheckBox1.Checked);
                cmd.Connection = con;
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    Label1.Text = "Add survey successfully";
                     
                }
                else
                {
                    Label1.Text = "Something's wrong";
                }
            }
            catch(Exception ex)
            {
                Label1.Text = "Error occured"+ex.Message;
            }
            finally
            {
                con.Close();

            }
    }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}