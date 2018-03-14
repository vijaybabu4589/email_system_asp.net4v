using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Windows.Forms;

public partial class reg_reg : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = globalvar.first_name;
            TextBox2.Text = globalvar.last_name;
            TextBox5.Text = globalvar.mono;
            TextBox3.Text = globalvar.user_name;
            for (int i = 1; i <= 31; i++)
                DropDownList1.Items.Add(i.ToString());
            for (int i = 1995; i <= 2016; i++)
                DropDownList3.Items.Add(i.ToString());
                    DropDownList2.Items.Add("January");
                    DropDownList2.Items.Add("February");
                    DropDownList2.Items.Add("March");
                    DropDownList2.Items.Add("April");
                    DropDownList2.Items.Add("May");
                    DropDownList2.Items.Add("June");
                    DropDownList2.Items.Add("July");
                    DropDownList2.Items.Add("August");
                    DropDownList2.Items.Add("September");
                    DropDownList2.Items.Add("October");
                    DropDownList2.Items.Add("November");
                    DropDownList2.Items.Add("December");

                    DropDownList4.Items.Add("What was your childhood nickname?");
                    DropDownList4.Items.Add("In what city did you meet your spouse/significant other?");
                    DropDownList4.Items.Add("What is the name of your favorite childhood friend?");
                    DropDownList4.Items.Add("What street did you live on in third grade?");
                    DropDownList4.Items.Add("What school did you attend for sixth grade?");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1 = "";
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox8.Text == "" || TextBox9.Text == "")
            MessageBox.Show("Enter all Fields");

        str1 = "select user_name from logindb where user_name='" + TextBox3.Text + "'";
        conn.Open();
        SqlCommand cmd1 = new SqlCommand(str1, conn);
        SqlDataReader dr1 = cmd1.ExecuteReader();

        if (dr1.Read())
        {
            MessageBox.Show("User Name Already Taken");
            conn.Close();
        }
        else
        {
            conn.Close();
            str1 = "insert into logindb values('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text + "','" + TextBox6.Text + "'," + DropDownList4.SelectedIndex + ",'" + TextBox8.Text + "','')";
            conn.Open();
            SqlCommand cmd2 = new SqlCommand(str1, conn);
            cmd2.ExecuteNonQuery();
            conn.Close();
            MessageBox.Show("Registered successfully");
            Response.Redirect("~/Defaul.aspx");
        }
    }
    
}