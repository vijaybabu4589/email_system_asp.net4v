using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            globalvar.uname = "";
            globalvar.usent = "";
            globalvar.uslno = "";
            globalvar.first_name = "";
            globalvar.last_name = "";
            globalvar.mono = "";
            globalvar.user_name = "";
        }
    }

    protected void loginbt_Click(object sender, EventArgs e)
    {
        string str1 = "";

        str1 = "select * from logindb where user_name='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";

        conn.Open();
        SqlCommand cmd1 = new SqlCommand(str1, conn);
        SqlDataReader dr1 = cmd1.ExecuteReader();
        if (dr1.Read())
        {

            FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, false);
            globalvar.uname = TextBox1.Text;
            Response.Redirect("main.aspx");
        }
        else
        {
            MessageBox.Show("Username or Password is not correct");
        }
        conn.Close();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (System.Text.RegularExpressions.Regex.IsMatch(monu.Text, "^[a-zA-Z]"))
        {
            MessageBox.Show("enter mobile number");
            monu.Text.Remove(monu.Text.Length - 1);
        }
        else if (monu.Text.Length < 10)
        {
            MessageBox.Show("Enter Correct number");
        }
        else
        {
            globalvar.first_name = f_name.Text;
            globalvar.last_name = lname.Text;
            globalvar.mono = monu.Text;
            globalvar.user_name = user_name.Text;
            Response.Redirect("reg/reg.aspx");
        }
    }
    
    protected void fname_TextChanged1(object sender, EventArgs e)
    {
        f_name.Text = "";
    }
    protected void monu_TextChanged(object sender, EventArgs e)
    {
      
    }
    protected void clearbt_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = ""; 
    }
}

