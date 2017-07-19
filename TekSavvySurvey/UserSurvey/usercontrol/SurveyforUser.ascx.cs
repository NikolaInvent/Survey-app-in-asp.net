using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TekSavvySurvey.UserSurvey.usercontrol
{
    public partial class SurveyforUser : System.Web.UI.UserControl
    {
        SqlConnection con;
        SqlCommand cmd;
         int correctAnswer = 0;
         int wrongAnswer = 0;
        int select_no = 0;
        int count = 0;
        public SurveyforUser()
        {
            con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            cmd = new SqlCommand();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                loadgrid();
            }
        }

        private void loadgrid()
        {
            con.Open();
            cmd.CommandText = "select * from [Question]";
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                Label l1 = row.FindControl("Question_Id") as Label;
                RadioButton r1 = row.FindControl("answer1") as RadioButton;
                RadioButton r2 = row.FindControl("answer2") as RadioButton;
                if (r1.Checked)
                {
                    select_no = 1;
                }
                else if (r2.Checked)
                {
                    select_no = 2;
                }
                con.Close();

                check_number(l1.Text);
            
            }
            Response.Write("Correct answer is" + correctAnswer.ToString());
        }

        private void check_number(string text)
        {
            con.Open();
            cmd.CommandText ="select * from[Question] where Question_Id=@qid"+count;
            cmd.Parameters.AddWithValue("@qid"+count, text);
            cmd.Connection = con;
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (select_no == Convert.ToInt32(rd["correctAnswer"]))
                {
                    correctAnswer = correctAnswer + 1;
                }

                else
                {
                    wrongAnswer = wrongAnswer + 1;
                }
            }
            count++;
        }
    }
    }
