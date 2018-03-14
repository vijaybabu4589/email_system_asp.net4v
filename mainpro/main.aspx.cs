using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Windows.Forms;

public partial class main : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        string str1="";
          str1 = "select back_img from logindb where user_name='"+globalvar.uname+"'";
        conn.Open();
        SqlCommand cmd1 = new SqlCommand(str1, conn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
            TextBox1.Text = dr1.GetValue(0).ToString();    
        conn.Close();
        globalvar.bground=TextBox1.Text;
        Label1.Text = globalvar.uname;
    }


 protected void Button1_Click(object sender, EventArgs e)
 {
     FormsAuthentication.SignOut();
     Response.Redirect("default.aspx");
 }

 protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
 {
     globalvar.usent = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
     globalvar.uslno = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text;
     Response.Redirect("seemail.aspx");
 }
}