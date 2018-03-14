using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Windows.Forms;


public partial class persosett : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    string dcoun;
    string qno = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        bgs.Text = globalvar.bground;
        if (!IsPostBack)
        {
            string str1 = "";
            str1 = "select * from logindb where user_name='" + globalvar.uname + "'";
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(str1, conn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            dr1.Read();
            TextBox3.Text = dr1.GetValue(0).ToString();
            TextBox1.Text = dr1.GetValue(2).ToString();
            TextBox2.Text = dr1.GetValue(3).ToString();
            TextBox5.Text = dr1.GetValue(4).ToString();
            TextBox9.Text = dr1.GetValue(5).ToString();
            TextBox10.Text = dr1.GetValue(8).ToString();
            qno = dr1.GetValue(7).ToString();
            conn.Close();
        }
        if (!IsPostBack)
        {

            if (qno == "0")
            {
                DropDownList4.Items.Add("What was your childhood nickname?");
                DropDownList4.Items.Add("In what city did you meet your spouse/significant other?");
                DropDownList4.Items.Add("What is the name of your favorite childhood friend?");
                DropDownList4.Items.Add("What street did you live on in third grade?");
                DropDownList4.Items.Add("What school did you attend for sixth grade?");
            }
            else if (qno == "1")
            {
                DropDownList4.Items.Add("In what city did you meet your spouse/significant other?");
                DropDownList4.Items.Add("What is the name of your favorite childhood friend?");
                DropDownList4.Items.Add("What street did you live on in third grade?");
                DropDownList4.Items.Add("What school did you attend for sixth grade?");
                DropDownList4.Items.Add("What was your childhood nickname?");
            }
            else if (qno == "2")
            {

                DropDownList4.Items.Add("What is the name of your favorite childhood friend?");
                DropDownList4.Items.Add("What street did you live on in third grade?");
                DropDownList4.Items.Add("What school did you attend for sixth grade?");
                DropDownList4.Items.Add("What was your childhood nickname?");
                DropDownList4.Items.Add("In what city did you meet your spouse/significant other?");
            }
            else if (qno == "3")
            {

                DropDownList4.Items.Add("What street did you live on in third grade?");
                DropDownList4.Items.Add("What school did you attend for sixth grade?");
                DropDownList4.Items.Add("What was your childhood nickname?");
                DropDownList4.Items.Add("In what city did you meet your spouse/significant other?");
                DropDownList4.Items.Add("What is the name of your favorite childhood friend?");
            }
            else
            {
                DropDownList4.Items.Add("What school did you attend for sixth grade?");
                DropDownList4.Items.Add("What was your childhood nickname?");
                DropDownList4.Items.Add("In what city did you meet your spouse/significant other?");
                DropDownList4.Items.Add("What is the name of your favorite childhood friend?");
                DropDownList4.Items.Add("What street did you live on in third grade?");
            }
        }



    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {


    }
    protected void Button4_Click(object sender, EventArgs e)
    {
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
        Label10.Visible = true;
        DropDownList1.Visible = true;
        DropDownList2.Visible = true;
        DropDownList3.Visible = true;
        Button8.Visible = true;
        Button9.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str1 = "";
        Button8.Enabled = true;
        Button9.Enabled = true;
        TextBox1.Enabled = false;
        TextBox2.Enabled = false;
        TextBox3.Enabled = false;
        TextBox5.Enabled = false;
        TextBox9.Enabled = false;
        TextBox10.Enabled = false;
        DropDownList4.Enabled = true;
        DropDownList1.Enabled = true;
        DropDownList2.Enabled = true;
        DropDownList3.Enabled = true;
        Button2.Visible = true;
        str1 = "update logindb set first_name='" + TextBox1.Text + "',last_name='" + TextBox2.Text + "',mobile_number='" + TextBox5.Text + "',qno='" + DropDownList4.SelectedIndex + "',ans='" + TextBox10.Text + "' where user_name='" + globalvar.uname + "'";
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        MessageBox.Show("Updated successfully");
        FormsAuthentication.SignOut();
        Response.Redirect("~/Defaul.aspx");
    }

    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Enabled = true;
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
        TextBox5.Enabled = true;
        TextBox10.Enabled = true;
        DropDownList4.Enabled = true;
        Button8.Enabled = false;
        Button9.Enabled = false;
        DropDownList1.Enabled = false;
        DropDownList2.Enabled = false;
        DropDownList3.Enabled = false;
        Button3.Visible = true;
        Button2.Visible = false;
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Redirect("changeusername.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        string str1 = "";
        str1 = "update logindb set dob='" + DropDownList1.Text + "/" + DropDownList2.Text + "/" + DropDownList3.Text + "' where user_name='" + globalvar.uname + "'";
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
        MessageBox.Show("Updated successfully");
        Response.Redirect("main.aspx");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Redirect("changeback.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("main.aspx");
    }
}