using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"] == "user")
        {
            U_Panel.Visible = true;
        }
        else
        {
            U_Panel.Visible = false;
        }
    }
}
