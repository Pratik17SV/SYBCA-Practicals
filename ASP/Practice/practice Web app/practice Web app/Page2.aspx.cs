using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practice_Web_app
{
	public partial class Page2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (PreviousPage != null)
			{
                String name = ((TextBox)PreviousPage.FindControl("name")).Text;
				String color = ((DropDownList)PreviousPage.FindControl("DropDownList1")).Text;
				if (color == "Red")
				{
					selectedname.ForeColor = System.Drawing.Color.Red;
					selectedname.Text = name;
                    selectedcolor.ForeColor = System.Drawing.Color.Red;
                    selectedcolor.Text = color;
				}
				else if (color == "Blue")
				{ 
					selectedname.ForeColor = System.Drawing.Color.Blue;
					selectedname.Text = name;
					selectedcolor.ForeColor = System.Drawing.Color.Blue;
                    selectedcolor.Text = color;
                }
                else if (color == "Yellow")
				{
					selectedcolor.ForeColor = System.Drawing.Color.Yellow;
                    selectedname.Text = name;
                    selectedcolor.Text = color;
					selectedname.ForeColor = System.Drawing.Color.Yellow;
                }

            }
		}
	}
}