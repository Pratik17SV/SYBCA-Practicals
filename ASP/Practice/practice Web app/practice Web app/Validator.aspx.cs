using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practice_Web_app
{
	public partial class Validator : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}