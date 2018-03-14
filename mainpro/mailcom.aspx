<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mailcom.aspx.cs" Inherits="Default2"  ValidateRequest="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style>
body {
    font-family: "Lato", sans-serif;
    transition: background-color .5s;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s
}

.sidenav a:hover, .offcanvas a:focus{
    color: #f1f1f1;
}

.closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px !important;
    margin-left: 50px;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
         z-index: 1;
         left: 6px;
         top: 24px;
         position: absolute;
         height: 189px;
         width: 1085px;
     }

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
  <style> 
inputs:-webkit-input-placeholder {
    color: #b5b5b5;
}

inputs-moz-placeholder {
    color: #b5b5b5;
}

.inputs {
    width: 231px;
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
 .button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 0px 0px;
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
<br>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  	
  <a href="main.aspx">Inbox</a>		
  <a href="mailcom.aspx">Compose Mail</a>
  <a href="sentmail.aspx">Sent</a>		
  			
</div>

<div id="main">
    <form id="form1" runat="server">
     <script type="text/javascript" src="tinymce/tinymce.min.js"></script>
    <script type="text/javascript">
        tinymce.init({ selector: 'textarea', width: 500 });
    </script>



      <span style="font-size:30px;cursor:pointer" onclick="openNav()">☰ </span>
    <asp:ImageButton ID="ImageButton1" runat="server" 
        ImageUrl="~/icon/1457208896_attachment_add.png" onclick="ImageButton1_Click" 
        
          
         
         style="z-index: 1; left: 869px; top: 240px; position: absolute; height: 32px;" />
      <asp:ListBox ID="ListBox1" runat="server" Enabled="False" 
          style="z-index: 1; left: 997px; top: 356px; position: absolute; height: 185px; width: 318px" 
          Visible="False"></asp:ListBox>
    <a href="#">
    <asp:TextBox ID="subjecttxt" runat="server" 
        
        
        
          style="z-index: 1; left: 181px; top: 157px; position: absolute; height: 36px; width: 388px" 
          CssClass="inputs"></asp:TextBox>
    <asp:FileUpload ID="FileUpload1" runat="server" class="button button2 "
        
        
       
        style="z-index: 1; left: 879px; top: 293px; position: absolute; height: 29px;" 
        Visible="False" />
    </a>		
    <div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [user_name] FROM [logindb]"></asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" 
    style="z-index: 1; left: 120px; top: 113px; position: absolute; width: 102px" 
    Text="TO::"></asp:Label>
    
    </div>
    <asp:DropDownList ID="contact" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="user_name" 
        DataValueField="user_name" 
        
        
          style="z-index: 1; left: 183px; top: 109px; position: absolute; height: 39px; width: 209px">
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 100px; top: 164px; position: absolute; width: 91px" 
        Text="Subject"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 115px; top: 217px; position: absolute; width: 76px" 
        Text="Body"></asp:Label>
    <asp:Button ID="sendbutton" runat="server" onclick="Button2_Click" class="button button2 "
        style="z-index: 1; left: 811px; top: 513px; position: absolute; width: 85px; height: 30px;" 
        Text="Send" />
    <p>
    <asp:Button ID="attachbutton" runat="server" onclick="Button1_Click" class="button button2 "
        style="z-index: 1; left: 889px; position: absolute; height: 25px; top: 354px; width: 87px;" 
        Text="Attach" Visible="False"/>
        <asp:ListBox ID="listbox2" runat="server" 
            style="z-index: 1; left: 1137px; top: 268px; position: absolute" 
            Visible="False">
        </asp:ListBox>
    </p>
    <asp:TextBox ID="bgs" runat="server" 
            
         
         style="z-index: 1; left: 735px; top: -57px; position: absolute; width: 89px;"></asp:TextBox>
     <asp:Panel ID="Panel1" runat="server" 
         
         
         style="z-index: 1; left: 183px; top: 226px; position: absolute; height: 257px; width: 619px">
         <a href="#">
         <asp:TextBox ID="bodytxt" runat="server" 
    TextMode="MultiLine" Width="417px" Height="227px" />
         </a>
     </asp:Panel>
    </form>

</div>
<script>
    function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
        document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
    }

    function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
        document.body.style.backgroundColor = "white";
    }
</script>

   <script type="text/javascript" language="javascript" >
       function changeBG() {
           document.body.background = document.getElementById("bgs").value;
       }
</script> 
</body>
</html>
