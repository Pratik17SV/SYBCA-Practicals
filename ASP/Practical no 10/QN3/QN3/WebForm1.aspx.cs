using System;
using System.Collections.Generic;
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Fname = TextBox1.Text;
            string Lname = TextBox2.Text;
            int age = int.Parse(TextBox3.Text);
            string accounttype = DropDownList1.SelectedValue;
            string email = TextBox4.Text;
            string 

            String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\admin\Documents\GitHub\SYBCA-Practicals\ASP\Practicalno10\QN3\QN3\App_Data\Database1.mdf"";Integrated Security=True;TrustServerCertificate=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                string insertQuery = "INSERT INTO  ACCOUNTINFO (Id, Fname, lname, age, AccountType, Address, Email, Mobile) VALUES (@Id, @Fname, @lname, @age, @AccountType, @Address, @Email, @Mobile)";
                using (SqlCommand insertCmd = new SqlCommand(insertQuery, con))
                {
                    
                    insertCmd.Parameters.AddWithValue("@Fname", Fname);
                    insertCmd.Parameters.AddWithValue("@Lname", Lname);
                    insertCmd.Parameters.AddWithValue("@age", age);
                    insertCmd.Parameters.AddWithValue("@AccountType", );
                    insertCmd.Parameters.AddWithValue("@Email", );
                    insertCmd.Parameters.AddWithValue("@Mobile",);



                    int rowsAffected = insertCmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        lblMessage.Visible = true;
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Sign-up successful!";
                    }
                    else
                    {
                        lblMessage.Visible = true;
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                        lblMessage.Text = "Error: Sign-up failed.";
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}