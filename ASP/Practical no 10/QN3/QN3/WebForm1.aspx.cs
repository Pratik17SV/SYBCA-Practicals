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

        protected void Registerbtn(object sender, EventArgs e)
        {
            string Fname = TextBox1.Text;
            string Lname = TextBox2.Text;
            int age = int.Parse(TextBox3.Text);
            string accounttype = DropDownList1.SelectedValue;
            string address = TextBox6.Text;
            string email = TextBox4.Text;
            int mobile = int.Parse(TextBox5.Text);

            String connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=B:\Collage BCA\Sybca\Sem 4\SYBCA-Practicals\ASP\Practical no 10\QN3\QN3\App_Data\Database1.mdf;Integrated Security=True;TrustServerCertificate=False";
            SqlConnection con = new SqlConnection(connectionString);
            string insertQuery = "INSERT INTO  ACCOUNTINFO (Fname, lname, age, AccountType, Address, Email, Mobile) VALUES ("+Fname+", "+Lname+", "+age+", "+accounttype+","+address+", "+email+", " +mobile+")";
            SqlCommand cmd = new SqlCommand(insertQuery,con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 0)
            {
                lblMessage.Text = "Registration Failed";
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblMessage.Text = "Registration Successful";
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}