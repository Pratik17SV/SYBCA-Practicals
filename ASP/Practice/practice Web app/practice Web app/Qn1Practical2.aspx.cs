using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practice_Web_app
{
    public partial class Qn1Practical2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void mumbai_CheckedChanged(object sender, EventArgs e)
        {
            Theaters.Visible = true;
            Theaters.Items.Clear();
            Theaters.Items.Add("Mumbai PVR");
            Theaters.Items.Add("Mumbai INOX");
            Theaters.Items.Add("Mumbai Cinepolis");
            Button1.Visible = true;
        }

        protected void Pune_CheckedChanged(object sender, EventArgs e)
        {
            Theaters.Visible = true;
            Theaters.Items.Clear();
            Theaters.Items.Add("Pune PVR");
            Theaters.Items.Add("Pune INOX");
            Theaters.Items.Add("Pune Cinepolis");
            Button1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label2.Visible = true;
            Label3.Visible = true;
        }
    }
}
