<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seemail.aspx.cs" Inherits="Default2"  ValidateRequest="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
         left: 108px;
         top: 153px;
         position: absolute;
         height: 417px;
         width: 794px;
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
    <title></title>
</head>
<body onload="changeBG()">

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



    <form id="form1" runat="server">
<script type="text/javascript" src="tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({ selector: 'textarea'});
    </script>

<asp:Label ID="lbl1" runat="server" BorderStyle="Inset" 
            style="z-index: 1; left: -35px; top: 13px; position: absolute; height: 26px; width: 96px; bottom: 316px; " 
            Text="FROM" CssClass="inputs"></asp:Label>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    
    style="z-index: 1; left: 839px; top: 111px; position: absolute; height: 128px; width: 217px" 
    onrowcommand="GridView1_RowCommand1" 
    onselectedindexchanged="GridView1_SelectedIndexChanged" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField AccessibleHeaderText="File">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%# Eval("File") %>' Text='<%# Eval("File") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField AccessibleHeaderText="Size" DataField="size" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
        <asp:Label ID="Label5" runat="server" BorderStyle="Inset" 
            style="z-index: 1; left: -29px; top: 150px; position: absolute; height: 27px; width: 95px" 
            Text="BODY" CssClass="inputs"></asp:Label>





        
        <asp:Label ID="lblfrom" runat="server" BorderStyle="Inset" 
            style="z-index: 1; left: 123px; top: 13px; position: absolute; height: 23px; width: 153px" 
            Text="Label" CssClass="inputs"></asp:Label>
        <asp:Label ID="Label3" runat="server" BorderStyle="Inset" 
            style="z-index: 1; left: -31px; top: 83px; position: absolute; width: 94px; height: 25px" 
            Text="SUBJECT" CssClass="inputs"></asp:Label>
        <asp:Label ID="lblsubject" runat="server" BorderStyle="Inset" 
            
    
        
        style="z-index: 1; left: 126px; top: 77px; position: absolute; height: 34px; width: 623px" 
        CssClass="inputs"></asp:Label>
        




        <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            
            style="z-index: 1; left: -21px; top: 308px; position: absolute; height: 27px; width: 88px" 
            Visible="False">
        </asp:CheckBoxList>
    <asp:ListBox ID="ListBox2" runat="server" 
    style="z-index: 1; left: -25px; top: 213px; position: absolute" 
    Visible="False">
</asp:ListBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        style="z-index: 1; left: 1120px; top: -137px; position: absolute; width: 120px; height: 29px;" 
        Text="Logout" CssClass="button button2 " />
            <asp:TextBox ID="bgs" runat="server" 
            style="z-index: 1; left: -92px; top: -314px; position: absolute"></asp:TextBox>

            <asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 131px; top: 141px; position: absolute; height: 250px; width: 629px">
                <a href="#">
                <asp:TextBox ID="txtbody" runat="server" 
    TextMode="MultiLine" Height="209px" Width="652px" />
                </a>
    </asp:Panel>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="z-index: 1; left: 1080px; top: 109px; position: absolute; width: 134px" 
        Text="ALL FILES" Visible="False" />
    </form>
       <script type="text/javascript" language="javascript" >
           function changeBG() {
               document.body.background = document.getElementById("bgs").value;
           }


            
</script> 
</body>
</html>
