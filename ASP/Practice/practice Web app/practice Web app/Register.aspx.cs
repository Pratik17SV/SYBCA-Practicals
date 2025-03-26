using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace practice_Web_app
{
	public partial class Register : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void register_btn_Click(object sender, EventArgs e)
        {
			string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"B:\\Collage BCA\\Sybca\\Sem 4\\SYBCA-Practicals\\ASP\\Practice\\practice Web app\\practice Web app\\App_Data\\Database1.mdf\";Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "insert into [register] (Name, password, Email) values ('" + name.Text + "', '" + password.Text + "', '" + email.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("<script>alert('Data Inserted Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data Insertion Failed')</script>");
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"B:\\Collage BCA\\Sybca\\Sem 4\\SYBCA-Practicals\\ASP\\Practice\\practice Web app\\practice Web app\\App_Data\\Database1.mdf\";Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            string query = "Delete from [register] where Name = @Fname;";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Fname", name.Text);
            int i = cmd.ExecuteNonQuery();
            
            con.Close();
            if (i > 0) 
            { 
                Message.Visible = true;
                Message.Text = "Data Deleted Successfully";
            }
            else
            {
                Message.Visible = true;
                Message.Text = "Data Deletion Failed";
            }
        }
    }
}