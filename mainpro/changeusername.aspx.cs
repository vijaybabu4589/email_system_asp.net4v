using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Web.Security;
using System.Windows.Forms;

public partial class changeusername : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bgs.Text = globalvar.bground;
        Label2.Text = globalvar.uname;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str1 = "";
        str1 = "select * from logindb where user_name='" + globalvar.uname + "' and password='" + TextBox1.Text + "'";
        conn.Open();
        SqlCommand cmd1 = new SqlCommand(str1, conn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {
            Label5.Visible = true;
            TextBox2.Visible = true;
            Label6.Visible = true;
            TextBox3.Visible = true;
            Button4.Visible = true;
            Button3.Visible = true;
            Label3.Visible = false;
            Label2.Visible = false;
            Label1.Visible = false;
            TextBox1.Visible = false;
            Button1.Visible = false;
            Button2.Visible = false;
        }
        else
        {
            MessageBox.Show("Invalid Password");
            conn.Close();
        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        if (TextBox2.Text == TextBox3.Text)
        {   string str1 = "";
            str1 = "update logindb set password='" + TextBox3.Text + "' where user_name='" + globalvar.uname + "'";
            conn.Open();
            SqlCommand cmd2 = new SqlCommand(str1, conn);
            cmd2.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("Updated successfully");
            FormsAuthentication.SignOut();
            Response.Redirect("~/Defaul.aspx");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}