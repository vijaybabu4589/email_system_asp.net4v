using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Windows.Forms;

public partial class sentmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bgs.Text = globalvar.bground;
        Label1.Text = globalvar.uname;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        globalvar.usent = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        globalvar.uslno = GridView1.Rows[GridView1.SelectedIndex].Cells[5].Text;
        Response.Redirect("seemail.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("default.aspx");
    }
}