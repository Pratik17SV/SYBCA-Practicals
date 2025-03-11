using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace QN3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DisplayData();
            }
        }
        private void DisplayData()

        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=31D-LAB6-08\SQLEXPRESS;Initial Catalog=account;Integrated Security=True"))
            {
                string query = "SELECT * FROM [register]";
                using (SqlDataAdapter da = new SqlDataAdapter(query, conn))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    GridView1.Visible = dt.Rows.Count > 0;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=31D-LAB6-08\SQLEXPRESS;Initial Catalog=account;Integrated Security=True"))
            {
                string query = "INSERT INTO [register] (username, age, accountType, user_address, email, contact) VALUES(@username, @age, @accountType, @user_address, @email, @contact)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@age", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@accountType", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@user_address", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@contact", TextBox5.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            DisplayData();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=31D-LAB6-08\SQLEXPRESS;Initial Catalog=account;Integrated Security=True"))
            {
                string query = "UPDATE [register] SET age=@age, accountType = @accountType, user_address = @user_address, email = @email, contact = @contact WHERE TRIM(username)= @username";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@age", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@accountType", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@address", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@contact", TextBox5.Text);
                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected == 0)
                    {
                        Response.Write("<script>alert('No matching record found to update!')</script>");
                    }
                    conn.Close();
                }
            }
            DisplayData();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source=31D-LAB6-08\SQLEXPRESS;Initial Catalog=account;Integrated Security=True"))
            {
                string query = "DELETE FROM [register] WHERE username = @username";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            DisplayData();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DisplayData();
        }
    }
}
