using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Anuradha\Desktop\project\Secure File Storage On Cloud Using Hybrid Cryptography (Akshay Kumar)\Project\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "select uid from reg order by uid desc";
        SqlDataAdapter sda = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        string uuid = "";
        if (ds.Tables[0].Rows.Count > 0)
        {
            string uid = ds.Tables[0].Rows[0][0].ToString();
            int i = Convert.ToInt16(uid);
            i = i + 1;
            uuid = i.ToString();
        }
        else
        {
            uuid = "101";
        }

        string ins = "insert into reg values('" + uuid + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
        SqlCommand cmd = new SqlCommand(ins, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Registered Successfully!!!')", true);
        Response.Redirect("Login.aspx");
    }
}