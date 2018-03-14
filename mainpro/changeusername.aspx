<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changeusername.aspx.cs" Inherits="changeusername" %>

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
    
        <asp:TextBox ID="bgs" runat="server" 
            style="z-index: 1; left: 721px; top: -25px; position: absolute"></asp:TextBox>
    
    </div>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 15px; top: 53px; position: absolute; width: 90px; bottom: 435px; right: 997px;" 
        Text="User Name"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; top: 55px; position: absolute; left: 124px; width: 96px"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 16px; top: 97px; position: absolute; width: 87px" 
        Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" 
        
        style="z-index: 1; left: 125px; top: 96px; position: absolute; width: 145px; height: 25px" 
        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" 
        style="z-index: 1; left: 34px; top: 161px; position: absolute; width: 92px" 
        Text="Cancel" onclick="Button1_Click" CssClass=" button button2 " />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        style="z-index: 1; top: 162px; position: absolute; left: 156px; width: 97px" 
        Text="OK" CssClass=" button button2 " ValidationGroup="y" />
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 468px; top: 297px; position: absolute; width: 102px; height: 19px; margin-right: 1px" 
        Text="New Password" Visible="False"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 434px; top: 343px; position: absolute; width: 133px; right: 535px;" 
        Text="Conform Password" Visible="False"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" 
        
        style="z-index: 1; left: 604px; top: 291px; position: absolute; height: 24px; width: 128px;" 
        Visible="False"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        
        style="z-index: 1; left: 604px; top: 341px; position: absolute; height: 26px;" 
        Visible="False"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" 
        style="z-index: 1; left: 677px; top: 404px; position: absolute; width: 81px" 
        Text="Submit" onclick="Button3_Click1" Visible="False" 
        CssClass=" button button2 " ValidationGroup="a" />
    <asp:Button ID="Button4" runat="server" 
        style="z-index: 1; left: 528px; top: 404px; position: absolute; width: 90px; height: 26px;" 
        Text="Cancel" onclick="Button4_Click" Visible="False" 
        CssClass=" button button2 " />
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
        ErrorMessage="Password Not Matching" 
        style="z-index: 1; left: 768px; top: 344px; position: absolute" 
        ValidationGroup="a"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Enter Password" 
        SetFocusOnError="True" 
        style="z-index: 1; top: 98px; position: absolute; left: 288px" 
        ValidationGroup="y"></asp:RequiredFieldValidator>
     <script type="text/javascript" language="javascript" >
         function changeBG() {
             document.body.background = document.getElementById("bgs").value;
         }
</script> 
    </form>
     </body>
</html>
