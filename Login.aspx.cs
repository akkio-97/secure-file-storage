using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Check;

public partial class Admin_Login : System.Web.UI.Page
{
    
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Anuradha\Desktop\project\Secure File Storage On Cloud Using Hybrid Cryptography (Akshay Kumar)\Project\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.check("F128", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "select uid,pwd from reg where email='" + TextBox1.Text + "'and pwd='" + TextBox2.Text + "'";
        SqlDataAdapter sda = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["status"] = "li";
            Session["type"] = "user";
            Session["uid"] = ds.Tables[0].Rows[0][0].ToString();
            Response.Redirect("UploadFiles.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Invalid Login!!!')", true);
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User_Register.aspx");
    }
}