<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sentmail.aspx.cs" Inherits="sentmail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style> 
inputs:-webkit-input-placeholder {
    color: #b5b5b5;
}

inputs-moz-placeholder {
    color: #b5b5b5;
}

.inputs {
    width: 118px;
    padding: 5px 5px;
    font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
    font-weight: 400;
    font-size: 14px;
    color: #9D9E9E;
    text-shadow: 1px 1px 0 rgba(256, 256, 256, 1.0);
    background: #FFF;
    border: 1px solid #FFF;
    border-radius: 5px;
    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.50);
    -moz-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.50);
    -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.50);
}

.inputs:focus 
{
    
    background: #DFE9EC;
    color: #414848;
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25);
    -moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25);
    -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25);
    outline: 0;
}

.inputs:hover {
    background: #DFE9EC;
    color: #414848;
}
</style> 
 <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}
     #form1
     {
         z-index: 1;
         left: 111px;
         top: 117px;
         position: absolute;
         height: 363px;
         width: 794px;
     }
 </style>
 <style>
 .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 1px 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}


.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
</head>
<body onload="changeBG()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="slno" DataSourceID="SqlDataSource1" 
        
        style="z-index: 1; left: 98px; top: 25px; position: absolute; height: 392px; width: 799px" 
        AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        EmptyDataText="NO MESSAGE">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField SelectText="open" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="ureceive" HeaderText="Sent to" 
                SortExpression="ureceive" />
            <asp:BoundField DataField="msubject" HeaderText="Subject" 
                SortExpression="msubject" />
            <asp:BoundField DataField="mdate" HeaderText="Date" SortExpression="mdate" />
            <asp:BoundField DataField="mtime" HeaderText="Time" 
                SortExpression="mtime" />
            <asp:BoundField DataField="slno" HeaderText="slno" ReadOnly="True" 
                SortExpression="slno" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        
        SelectCommand="SELECT * FROM [mailtb] WHERE ([usend] = @usend) ORDER BY [mdate] DESC, [mtime] DESC" 
        DeleteCommand="DELETE FROM [mailtb] WHERE [slno] = @slno" 
        InsertCommand="INSERT INTO [mailtb] ([slno], [usend], [ureceive], [mbody], [msubject], [mattach], [mdate], [mtime]) VALUES (@slno, @usend, @ureceive, @mbody, @msubject, @mattach, @mdate, @mtime)" 
        
        UpdateCommand="UPDATE [mailtb] SET [usend] = @usend, [ureceive] = @ureceive, [mbody] = @mbody, [msubject] = @msubject, [mattach] = @mattach, [mdate] = @mdate, [mtime] = @mtime WHERE [slno] = @slno">
        <DeleteParameters>
            <asp:Parameter Name="slno" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="slno" Type="Int32" />
            <asp:Parameter Name="usend" Type="String" />
            <asp:Parameter Name="ureceive" Type="String" />
            <asp:Parameter Name="mbody" Type="String" />
            <asp:Parameter Name="msubject" Type="String" />
            <asp:Parameter Name="mattach" Type="String" />
            <asp:Parameter Name="mdate" Type="String" />
            <asp:Parameter Name="mtime" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="Label1" Name="usend" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="usend" Type="String" />
            <asp:Parameter Name="ureceive" Type="String" />
            <asp:Parameter Name="mbody" Type="String" />
            <asp:Parameter Name="msubject" Type="String" />
            <asp:Parameter Name="mattach" Type="String" />
            <asp:Parameter Name="mdate" Type="String" />
            <asp:Parameter Name="mtime" Type="String" />
            <asp:Parameter Name="slno" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label" Enabled="False" 
        style="z-index: 1; left: 64px; top: 230px; position: absolute" Visible="False"></asp:Label>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" class=" button button2 "
        style="z-index: 1; left: 1119px; top: -95px; position: absolute; width: 120px" 
        Text="Logout" />
         <asp:TextBox ID="bgs" runat="server" 
            style="z-index: 1; left: 791px; top: -141px; position: absolute"></asp:TextBox>
    </form>
  
<ul>
      <li><a href="mailcom.aspx">Compose Mail</a></li>
  <li><a class="active" href="main.aspx">Inbox</a></li>
  <li><a href="sentmail.aspx">Sent</a></li>
   
  <li class="dropdown">
    <a href="#" class="dropbtn">More</a>
    <div class="dropdown-content">
      <a href="persosett.aspx">Personal Setting</a>
      <a href="changeback.aspx">Wallpaper</a>
    </div>
  </li>
</ul>
 <script type="text/javascript" language="javascript" >
     function changeBG() {
         document.body.background = document.getElementById("bgs").value;
     }
</script> 
</body>
</html>
