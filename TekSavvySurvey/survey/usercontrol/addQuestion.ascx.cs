using System;
using System.Configuration;
using System.Data.SqlClient;

namespace TekSavvySurvey.survey.usercontrol
{
    public partial class addQuestion : System.Web.UI.UserControl
    {
        SqlConnection con;
        SqlCommand cmd;
        public addQuestion()
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
                cmd.CommandText = "insert into[Question](Question,answer1,answer2,correctAnswer,Survey_Id)values(@qs,@a1,@a2,@ca,@si)";
                cmd.Parameters.AddWithValue("@qs", qtxt.Text);
                cmd.Parameters.AddWithValue("@a1", optiontxt.Text);
                cmd.Parameters.AddWithValue("@a2", option2txt.Text);
                cmd.Parameters.AddWithValue("@ca", coptiontxt.Text);
                cmd.Parameters.AddWithValue("@si", surtxt.Text);
               
                cmd.Connection = con;
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    resultlbl.Text = "Add question successfully";

                }
                else
                {
                    resultlbl.Text = "Something's wrong";
                }
            }
            catch (Exception ex)
            {
                resultlbl.Text = "Error occured" + ex.Message;
            }
            finally
            {
                con.Close();

            }
        }
    }
}