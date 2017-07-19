using System;
using System.Configuration;
using System.Data.SqlClient;

namespace TekSavvySurvey.admin.usercontrol
{
    public partial class login : System.Web.UI.UserControl
    {
        SqlConnection con;
        SqlCommand cmd;
        bool flag = true;

        public login()
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
                cmd.CommandText = "select * from[admin]";
                cmd.Connection = con;
                SqlDataReader rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    if(rd["email"].ToString()==adminemailtxt.Text && rd["password"].ToString() == adminpasstxt.Text)
                    {
                        Session["admin"] = rd["email"];
                        flag = false;
                        break;
                    }
                }
                if (flag == true)
                {
                    resultlbl.Text = "Email and password invalid";
                }
                else
                    Response.Redirect("~/admin/firstpage.aspx");

            }
            catch(Exception ex)
            {
                resultlbl.Text = ex.Message;
            }
        }
    }
}