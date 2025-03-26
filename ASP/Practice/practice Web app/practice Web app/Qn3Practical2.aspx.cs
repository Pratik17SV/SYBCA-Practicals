using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practice_Web_app
{
	public partial class Qn3Practical2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            
        }

        protected void Red_CheckedChanged(object sender, EventArgs e)
        {
            name.Visible = true;
            String Username = uname.Text;
            name.Text = Username;
            name.ForeColor = System.Drawing.Color.Red;
        }

        protected void Blue_CheckedChanged(object sender, EventArgs e)
        {
            String Username = uname.Text;
            name.Text = Username;
            name.ForeColor = System.Drawing.Color.Blue;
            name.Visible = true;
        }

        protected void yellow_CheckedChanged(object sender, EventArgs e)
        {
            String Username = uname.Text;
            name.Text = Username;
            name.ForeColor = System.Drawing.Color.Yellow;
            name.Visible = true;
        }

        protected void Underline_CheckedChanged(object sender, EventArgs e)
        {
            if (Underline.Checked)
            {
                name.Font.Underline = true;
            }
            else
            {
                name.Font.Underline = false;
            }
        }

        protected void Bold_CheckedChanged(object sender, EventArgs e)
        {
            if (Bold.Checked)
            {
                name.Font.Bold = true;
            }
            else
            {
                name.Font.Bold = false;
            }
        }

        protected void Italic_CheckedChanged(object sender, EventArgs e)
        {
            if (Italic.Checked)
            {
                name.Font.Italic = true;
            }
            else
            {
                name.Font.Italic = false;
            }
        }
    }
}