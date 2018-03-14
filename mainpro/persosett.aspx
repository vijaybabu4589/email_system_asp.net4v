<%@ Page Language="C#" AutoEventWireup="true" CodeFile="persosett.aspx.cs" Inherits="persosett" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
         left: 109px;
         top: 118px;
         position: absolute;
         height: 519px;
         width: 1379px;
     }
 .custom-dropdown {
    -webkit-appearance: none;  /*REMOVES DEFAULT CHROME & SAFARI STYLE*/
        -moz-appearance: none;  /*REMOVES DEFAULT FIREFOX STYLE*/
    /*REMOVES BORDER*/

        color: #fff;
        -webkit-border-radius: 5px;
        border-radius: 5px;
        font-size: 14px;
        padding: 0px;
    width: 9%;
        cursor: pointer;

        background: #0d98e8 url('reg/drop-down-arrow.png') no-repeat right center;
        background-size: 40px 37px;
        border-left-style: none !important;
        border-left-color: inherit !important;
        border-left-width: 0 !important;
        border-right-style: none !important;
        border-right-color: inherit !important;
        border-right-width: 0 !important;
        border-top-style: none !important;
        border-top-color: inherit !important;
        border-top-width: 0 !important;
        border-bottom-style: none !important;
        border-bottom-color: inherit !important;
        border-bottom-width: 0 !important;
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
<style> 
inputs:-webkit-input-placeholder {
    color: #b5b5b5;
}

inputs-moz-placeholder {
    color: #b5b5b5;
}

.inputs {
    width: 187px;
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
</head>
<body onload="changeBG()">
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="user name" 
    style="z-index: 1; left: 18px; top: 163px; position: absolute"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="First name" 
    style="z-index: 1; left: 20px; top: 77px; position: absolute"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="last name" 
    style="z-index: 1; left: 23px; top: 121px; position: absolute"></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="date of birth" 
    style="z-index: 1; left: 21px; top: 273px; position: absolute"></asp:Label>
    </asp:Panel>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 14px; top: 216px; position: absolute; width: 105px" 
        Text="Mobile Number"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        
        
        
        style="z-index: 1; left: 134px; top: 76px; position: absolute; bottom: 451px;" 
        CssClass="inputs" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="bgs" runat="server" 
        style="z-index: 1; left: 174px; top: -170px; position: absolute"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        
        
        style="z-index: 1; left: 132px; top: 120px; position: absolute; height: 21px;" 
        CssClass="inputs" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 132px; top: 167px; position: absolute" 
        ontextchanged="TextBox3_TextChanged" CssClass="inputs" Enabled="False" 
        AutoPostBack="True"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" 
        style="z-index: 1; left: 132px; top: 215px; position: absolute" 
        CssClass="inputs" Enabled="False"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" 
        
        
        
            
            style="z-index: 1; left: 712px; top: 151px; position: absolute; height: 19px; width: 56px;" 
            CssClass="custom-dropdown" Visible="False">
        </asp:DropDownList>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        
        
        
        
        style="z-index: 1; top: 151px; position: absolute; height: 20px; width: 123px; left: 783px; margin-bottom: 8px; right: 473px;" 
        CssClass="custom-dropdown" Visible="False">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList3" runat="server" 
        
        
        
        
        style="z-index: 1; top: 151px; position: absolute; right: 332px; height: 22px; bottom: 382px;" 
        CssClass="custom-dropdown" Visible="False">
    </asp:DropDownList>
    <asp:Button ID="Button2" runat="server" 
        style="z-index: 1; left: 26px; top: 468px; position: absolute; width: 95px; " 
        Text="edit" onclick="Button2_Click" CssClass=" button button2 " />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        style="z-index: 1; left: 155px; top: 467px; position: absolute; width: 106px; height: 30px; right: 1118px" 
        Text="save" Visible="False" CssClass=" button button2 " />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        style="z-index: 1; left: 639px; top: 82px; position: absolute; width: 169px" 
        Text="Change Date Of Birth" CssClass=" button button2 " />
        <asp:Label ID="Label10" runat="server" Text="date of birth" 
    style="z-index: 1; top: 148px; position: absolute; right: 687px; height: 19px; width: 73px;" 
        Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server" 
        style="z-index: 1; left: 134px; top: 263px; position: absolute" 
        CssClass="inputs" Enabled="False" ontextchanged="TextBox9_TextChanged"></asp:TextBox>
    <asp:Button ID="Button5" runat="server" 
        style="z-index: 1; left: 291px; top: 466px; position: absolute; height: 28px; width: 99px" 
        Text="Cancel" onclick="Button5_Click" CssClass=" button button2 " />
    <asp:Button ID="Button8" runat="server" 
        style="z-index: 1; left: 735px; top: 228px; position: absolute; width: 69px; right: 571px; height: 34px;" 
        Text="Save" Visible="False" onclick="Button8_Click" 
        CssClass=" button button2 " />
    <asp:Button ID="Button9" runat="server" 
        
        
        
        
        style="z-index: 1; left: 855px; top: 225px; position: absolute; height: 31px;" Text="Cancel" 
        Visible="False" CssClass=" button button2 " />
    <asp:Label ID="Label11" runat="server" 
        style="z-index: 1; left: 23px; top: 328px; position: absolute; width: 80px" 
        Text="question"></asp:Label>
    <asp:Label ID="Label12" runat="server" 
        style="z-index: 1; left: 24px; top: 377px; position: absolute; width: 86px; height: 22px;" 
        Text="answer"></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server" 
        
        
        
        
        style="z-index: 1; left: 136px; top: 381px; position: absolute; height: 20px" 
        CssClass="inputs" Enabled="False"></asp:TextBox>
    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="custom-dropdown" 
        
        
        
        
        style="z-index: 1; left: 134px; top: 328px; position: absolute; height: 28px; width: 368px" 
        Enabled="False">
    </asp:DropDownList>
    <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
        style="z-index: 1; left: 643px; top: 334px; position: absolute; height: 26px" 
        Text="Change Password" CssClass="button button2 " />
    <asp:Button ID="Button11" runat="server" class=" button button2 "
        style="z-index: 1; left: 1132px; top: -96px; position: absolute; width: 106px" 
        Text="Logout" onclick="Button11_Click" />
    <asp:Button ID="Button12" runat="server" class=" button button2 "
        style="z-index: 1; left: 649px; top: 403px; position: absolute" 
        Text="Change Background" onclick="Button12_Click" />
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
       <a></a>
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
