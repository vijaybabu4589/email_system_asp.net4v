<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            position: relative;
            top: 98px;
            left: 43px;
            width: 418px;
            height: 234px;
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
    width: 140px;
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
    padding: 10px 15px;
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
<body bgcolor="White">
    <form id="form1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" class=inputs
        
        
        
        style="z-index: 1; left: 199px; top: 33px; position: absolute; height: 26px; width: 149px" 
        TabIndex="1"></asp:TextBox>
    <asp:Button ID="loginbt" class="button button2" runat="server" onclick="loginbt_Click" 
        style="z-index: 1; top: 161px; position: absolute; width: 106px; left: 93px; height: 40px" 
        Text="Login" TabIndex="3" />
    <asp:TextBox ID="TextBox2" runat="server" class=inputs
        style="z-index: 1; left: 196px; top: 81px; position: absolute; height: 27px; width: 155px" 
        TextMode="Password" TabIndex="2"></asp:TextBox>
    <asp:Button ID="clearbt" runat="server" class=" button button2"
        style="z-index: 1; left: 259px; top: 161px; position: absolute; width: 106px; right: 49px; height: 41px" 
        Text="Clear" onclick="clearbt_Click" TabIndex="4" />
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 32px; top: 38px; position: absolute; width: 114px; height: 17px" 
        Text="User Name"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 31px; top: 88px; position: absolute; width: 108px" 
        Text="Password"></asp:Label>
    <asp:Panel ID="Panel1" runat="server" 
        
        
        
        style="z-index: 1; left: 829px; top: -2px; position: absolute; height: 437px; width: 588px">
        <asp:Label ID="Label4" runat="server" 
    style="z-index: 1; left: 45px; top: 4px; position: absolute; height: 45px; width: 267px;" 
    Text="Create An Account" Font-Size="XX-Large"></asp:Label>
        <asp:TextBox ID="lname" runat="server" 
            
            style="z-index: 1; left: 218px; top: 96px; position: absolute; height: 30px; width: 148px;" 
            CssClass="inputs" AutoCompleteType="Disabled" placeholder="Last Name"></asp:TextBox>
        <asp:TextBox ID="user_name" runat="server" 
            
            style="z-index: 1; left: 219px; top: 162px; position: absolute; height: 32px; width: 149px;" 
            CssClass="inputs"></asp:TextBox>
        <asp:TextBox ID="monu" runat="server" 
            
            style="z-index: 1; left: 222px; top: 230px; position: absolute; height: 29px; width: 149px;" 
            CssClass="inputs" MaxLength="10" AutoPostBack="True" 
            ontextchanged="monu_TextChanged"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" 
            style="z-index: 1; left: 90px; top: 174px; position: absolute; width: 94px" 
            Text="User Name"></asp:Label>
        <asp:Label ID="Label6" runat="server" 
            style="z-index: 1; left: 91px; top: 236px; position: absolute; width: 108px" 
            Text="Mobile Number"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="button button2" 
            style="z-index: 1; left: 241px; top: 312px; position: absolute; width: 111px; height: 40px" 
            Text="Submit" onclick="Button1_Click" />
        <asp:TextBox ID="f_name" runat="server" CssClass="inputs" 
            
            style="z-index: 1; left: 60px; top: 97px; position: absolute; height: 28px" 
            AutoCompleteType="Disabled" placeholder="First Name"></asp:TextBox>
    </asp:Panel>
    </form>
</body>
</html>
