using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Web.Security;
using System.Collections;
using System.IO;
using System.Data;
using Ionic.Zip;
using System.Collections.Generic;

public partial class Default2 : System.Web.UI.Page
{
    string attachfile = "";
    string str1 = "";
    string attach = "";
    SqlConnection conn = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        bgs.Text = globalvar.bground;
        if (!IsPostBack)
        {
            ListBox2.Items.Clear();
            lblfrom.Text = globalvar.usent;

            int checks = 0;
            //for body of the mail 
            str1 = "select * from mailtb where slno='" + int.Parse(globalvar.uslno) + "'";
            conn.Open();
            SqlCommand cmd3 = new SqlCommand(str1, conn);
            SqlDataReader dr3 = cmd3.ExecuteReader();
            if (dr3.Read())
            {
                lblsubject.Text = dr3.GetValue(4).ToString();
                txtbody.Text = dr3.GetValue(3).ToString();

            }

            conn.Close();

            //  fromlbl.Text = globalvar.usent;
            str1 = "select * from usermail where umslno='" + int.Parse(globalvar.uslno) + "'";
            conn.Open();
            SqlCommand cmd1 = new SqlCommand(str1, conn);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {

                attach = dr1.GetValue(1).ToString();
                ListBox2.Items.Add(attach);
                checks = 1;


            }
            conn.Close();

            if (checks == 1)
            {
                DataTable dt = new DataTable();
                dt.Columns.Add("File", typeof(string));
                dt.Columns.Add("size", typeof(string));


                foreach (ListItem li in ListBox2.Items)//for user mails
                {
                    conn.Open();
                    attachfile = "";
                    str1 = "select * from mailattach where mslno='" + li.Text + "'";
                    SqlCommand cmd2 = new SqlCommand(str1, conn);
                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    if (dr2.Read())
                        attachfile = dr2.GetValue(1).ToString();

                    // FileInfo fi = new FileInfo(Server.MapPath("~/attachdata/")+attachfile);
                    CheckBoxList1.Items.Add(attachfile);
                    string siz = (attachfile.Length) + "KB";
                    dt.Rows.Add(attachfile.Substring(4), siz);



                    conn.Close();

                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Button2.Visible = true;
            }

        }


    }




    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "")
        {
            Response.Clear();
            Response.ContentType = "application/octent-stream";

            foreach (ListItem li in CheckBoxList1.Items)
            {
                string checkstr = li.Text.Substring(4);
                if (e.CommandArgument.ToString() == checkstr.ToString())
                {
                    Response.AppendHeader("content-disposition", "filename=" + checkstr);
                    Response.TransmitFile(Server.MapPath("~/attachdata/") + li.Text);
                    Response.Flush();
                    Response.End();
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("default.aspx");
    }

   
        protected void Button2_Click(object sender, EventArgs e)
    {
        using (ZipFile zip = new ZipFile())
        {
            zip.AlternateEncodingUsage = ZipOption.AsNecessary;
            zip.AddDirectoryByName("Files");
            foreach (ListItem li in CheckBoxList1.Items)
            {
                string filep = "C:\\Users\\Vijay\\Documents\\Visual Studio 2010\\WebSites\\mainpro\\attachdata\\" + li.Text;
                zip.AddFile(filep, "Files");
             
            }
            Response.Clear();
            Response.BufferOutput = false;
            string zipName = String.Format("Zip_{0}.zip", DateTime.Now.ToString("yyyy-MMM-dd-HHmmss"));
            Response.ContentType = "application/zip";
            Response.AddHeader("content-disposition", "attachment; filename=" + zipName);
            zip.Save(Response.OutputStream);
            Response.End();
        }
    }
    }
