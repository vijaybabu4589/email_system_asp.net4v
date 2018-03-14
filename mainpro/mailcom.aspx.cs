using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Windows.Forms;
using System.Collections;

public partial class Default2 : System.Web.UI.Page
{
    
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bgs.Text = globalvar.bground;
        if (!IsPostBack)
        {
            ListBox1.Items.Clear();
            listbox2.Items.Clear();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str1="";
        int rVar = 0;
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.PostedFile.ContentLength <= 0)
                MessageBox.Show("File size cant be less than zero");
            if (FileUpload1.PostedFile.ContentLength < 1073741824)
            {
                str1 = "select max(mslno) +1  from mailattach";
                conn.Open();
                SqlCommand cmd1 = new SqlCommand(str1, conn);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    if (dr1.IsDBNull(0))
                        rVar = 1001;
                    else
                        rVar = int.Parse(dr1.GetValue(0).ToString());
                }
                conn.Close();
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/attachdata/") +  rVar + FileUpload1.FileName );
                ListBox1.Items.Add(FileUpload1.FileName);
                

                str1 = "insert into mailattach values('" + rVar + "','" + rVar + FileUpload1.FileName + "')";
                conn.Open();
                SqlCommand cmd2 = new SqlCommand(str1, conn);
                cmd2.ExecuteNonQuery();
                conn.Close();
                MessageBox.Show("Upload status: The file has Uploaded");
                listbox2.Items.Add(rVar.ToString());//filename wit its id

               
               
           }
                else
               
            MessageBox.Show("Upload status: The file has to be less than 1 GB!");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        //all mail details
        string str1 = "";
        int rVarr =0;
        str1 = "select max(slno)+1  from mailtb";
        conn.Open();
        SqlCommand cmd1 = new SqlCommand(str1, conn);
        SqlDataReader dr2 = cmd1.ExecuteReader();
        if (dr2.Read())
        {
            if (dr2.IsDBNull(0))
                rVarr = 001;
            else
                rVarr = int.Parse(dr2.GetValue(0).ToString());
                
        }
   conn.Close();
      


        str1 = "insert into mailtb values('" + rVarr + "','" + globalvar.uname + "','" + contact.SelectedValue.ToString() + "','" + bodytxt.Text + "','" + subjecttxt.Text +"','" + FileUpload1.FileName.ToString() + "','"+ DateTime.Today.ToString("dd-MM-yyyy") + "','" + DateTime.Now.ToString("hh:mm:ss") + "')"; 
        conn.Open();
        SqlCommand cmd2 = new SqlCommand(str1, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();
      //  MessageBox.Show("Message Sent successfully");

        foreach (ListItem li in listbox2.Items)//for user mails
        {
            
            str1 = "insert into usermail values('" + rVarr.ToString() + "', '" + li.Text + "')";
            conn.Open();
            SqlCommand cmd3 = new SqlCommand(str1, conn);
            cmd3.ExecuteNonQuery();
            conn.Close();

        }
      MessageBox.Show("Message Sent successfully");
      Response.Redirect("main.aspx");  
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        FileUpload1.Visible = true;
        attachbutton.Visible = true;
        ListBox1.Visible = true;
    }
   
}
