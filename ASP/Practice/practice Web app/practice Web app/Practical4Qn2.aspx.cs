using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practice_Web_app
{
	public partial class Practical4Qn2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
        {
			ListBox2.Items.Clear();
            foreach (ListItem item in ListBox1.Items)
			{
				String value = item.Text;
                ListBox2.Items.Add(value);
            }
        }
    }
}