using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewFiles : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Anuradha\Desktop\project\Secure File Storage On Cloud Using Hybrid Cryptography (Akshay Kumar)\Project\App_Data\Database2.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        string ses = (string)Session["status"];
        string uid = (string)Session["uid"];
        if (ses == null)
        {
            Response.Redirect("Login.aspx");
        }
        if ((string)Session["access"] == "no")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Cannot Access!!!')", true);
        }
        string s = "select * from details where uid='" + uid + "'";
        SqlDataAdapter sda = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        int count = ds.Tables[0].Rows.Count;
        string text = "<table align='center' width='70%'> <tr>";
        string url = "", name = "", fid, id;
        for (int i = 0; i < count; i++)
        {
            string ext = ds.Tables[0].Rows[i][6].ToString();
            if (ext == ".txt")
            {
                url = "icons\\txt.png";
            }
            else if (ext == ".mp3")
            {
                url = "icons\\mp3.png";
            }
            else if (ext == ".mp4")
            {
                url = "icons\\mp4.png";
            }
            else if (ext == ".pdf")
            {
                url = "icons\\pdf.png";
            }
            else
            {
                url = "icons\\default.png";
            }
            name = ds.Tables[0].Rows[i][2].ToString();
            fid = ds.Tables[0].Rows[i][1].ToString();
            id = ds.Tables[0].Rows[i][0].ToString();
            if ((i % 3) == 0)
            {
                text += "</tr>";
                text += "<tr> <td width = '32%' align = 'center' > ";
                text += "<a href='ViewDet.aspx?ID=" + id + "&FID=" + fid + "'>";
                text += "<img src=" + url + " width='220' height='170'/><br />";
                text += "<span style='width:100%; font-family:'Bell MT'; font-size:22px; color:dimgray'>" + name + "</span></a>";
                text += "</td>";
                text += "<td width='2%'></td>";
            }
            else
            {
                text += "<td width = '32%' align = 'center' > ";
                text += "<a href='ViewDet.aspx?ID=" + id + "&FID=" + fid + "'>";
                text += "<img src=" + url + " width='220' height='170'/><br />";
                text += "<span style='width:100%; font-family:'Bell MT'; font-size:22px; color:dimgray'>" + name + "</span></a>";
                text += "</td>";
                text += "<td width='2%'></td>";
            }
        }

        text += "</table>";

        Label1.Text = text;
    }
}