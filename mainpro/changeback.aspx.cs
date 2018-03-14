using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Windows.Forms;


public partial class changeback : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string str1 = "";
        str1 = "update logindb set back_img=' ' where user_name='" + globalvar.uname + "'";
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        MessageBox.Show("Updated successfully");
        Response.Redirect("main.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string str1 = "";
        str1 = "update logindb set back_img='photo/bg3.jpg' where user_name='" + globalvar.uname + "'";
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        MessageBox.Show("Updated successfully");
        Response.Redirect("main.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        string str1 = "";
        str1 = "update logindb set back_img='photo/bg2.jpg' where user_name='" + globalvar.uname + "'";
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        MessageBox.Show("Updated successfully");
        Response.Redirect("main.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        string str1 = "";
        str1 = "update logindb set back_img='photo/bg4.jpg' where user_name='" + globalvar.uname + "'";
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        MessageBox.Show("Updated successfully");
        Response.Redirect("main.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string str1 = "";
        str1 = "update logindb set back_img='photo/bg5.jpeg' where user_name='" + globalvar.uname + "'";
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        MessageBox.Show("Updated successfully");
        Response.Redirect("main.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        string str1 = "";
        str1 = "update logindb set back_img='photo/bg6.jpg' where user_name='" + globalvar.uname + "'";
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        MessageBox.Show("Updated successfully");
        Response.Redirect("main.aspx");
    }
}