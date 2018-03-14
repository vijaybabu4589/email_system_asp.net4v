<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg_reg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
    background: #ffffff url("img_tree.png") no-repeat right top;
    margin-right: 200px;
}
</style>
<style>
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

        background: #0d98e8 url(drop-down-arrow.png) no-repeat right center;
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
</style>
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
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 50px; top: 84px; position: absolute; width: 101px" 
        Text="first name"></asp:Label>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 47px; top: 132px; position: absolute; width: 92px" 
        Text="last name"></asp:Label>
    <asp:Label ID="Label3" runat="server" 
        style="z-index: 1; left: 45px; top: 180px; position: absolute; width: 81px" 
        Text="User name"></asp:Label>
    <asp:Label ID="Label4" runat="server" 
        style="z-index: 1; left: 366px; position: absolute; top: 77px; width: 76px" 
        Text="Mobile number"></asp:Label>
    <div style="margin-left: 40px">
        <asp:DropDownList ID="DropDownList1" runat="server" 
            style="z-index: 1; left: 496px; top: 239px; position: absolute; height: 22px; width: 59px;" 
            CssClass="custom-dropdown" TabIndex="10">
        </asp:DropDownList>
    </div>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        
        
        
        
        style="z-index: 1; top: 238px; position: absolute; height: 20px; width: 123px; left: 571px; margin-bottom: 8px; " 
        CssClass="custom-dropdown" TabIndex="11">
    </asp:DropDownList>
    <asp:DropDownList ID="DropDownList3" runat="server" 
        
        
        
        
        style="z-index: 1; left: 710px; top: 237px; position: absolute; height: 22px;" 
        CssClass="custom-dropdown" TabIndex="12">
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" 
        style="z-index: 1; left: 368px; top: 166px; position: absolute; width: 97px; height: 18px;" 
        Text="Alternative email"></asp:Label>
    <asp:Label ID="Label6" runat="server" 
        style="z-index: 1; left: 44px; top: 369px; position: absolute; width: 80px" 
        Text="Question"></asp:Label>
    <asp:Label ID="Label7" runat="server" 
        style="z-index: 1; left: 45px; top: 432px; position: absolute; width: 86px; height: 22px;" 
        Text="Answer"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"
        
        
        style="z-index: 1; left: 162px; top: 87px; position: absolute; height: 22px;" 
        CssClass="inputs" TabIndex="1"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" 
        
        
        style="z-index: 1; left: 161px; top: 137px; position: absolute; height: 22px;" 
        CssClass="inputs" TabIndex="2"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" 
        style="z-index: 1; left: 160px; top: 181px; position: absolute; bottom: 300px; height: 26px;" 
        CssClass="inputs" TabIndex="3" ></asp:TextBox>
    <asp:TextBox ID="TextBox4" runat="server" 
        
        
        
        style="z-index: 1; left: 160px; top: 231px; position: absolute; height: 23px; bottom: 253px;" 
        CssClass="inputs" TabIndex="4"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server" 
        
        
        
        style="z-index: 1; left: 475px; top: 83px; position: absolute; height: 23px; " 
        CssClass="inputs" TabIndex="8"></asp:TextBox>
    <asp:TextBox ID="TextBox6" runat="server" 
        
        
        
        
        style="z-index: 1; left: 474px; top: 169px; position: absolute; height: 20px" 
        CssClass="inputs" TabIndex="9"></asp:TextBox>
    <p>
        &nbsp;</p>
    <asp:Button ID="Button1" runat="server" class="button button2"
        style="z-index: 1; left: 534px; top: 395px; position: absolute; width: 110px" 
        Text="Submit" onclick="Button1_Click" TabIndex="13" />
    <asp:Label ID="Label8" runat="server" 
        style="z-index: 1; left: 43px; top: 234px; position: absolute; width: 90px; right: 969px" 
        Text="Password"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server" 
        style="z-index: 1; position: absolute; left: 146px; top: 431px; height: 31px;" 
        CssClass="inputs" TabIndex="7"></asp:TextBox>
    <asp:TextBox ID="TextBox9" runat="server" 
        
        style="z-index: 1; left: 162px; top: 291px; position: absolute; height: 23px; bottom: 214px;" 
        CssClass="inputs" TabIndex="5"></asp:TextBox>
    <asp:Label ID="Label9" runat="server" 
        style="z-index: 1; left: 38px; top: 291px; position: absolute; right: 956px;" 
        Text="Confirm password"></asp:Label>
   <asp:CompareValidator ID="CompareValidator" runat="server" 
        ControlToValidate="TextBox4" ControlToCompare="TextBox9" 
        ErrorMessage="Password does not match!" 
        style="z-index: 1; left: 330px; top: 291px; position: absolute"></asp:CompareValidator>
    <asp:Label ID="Label10" runat="server" 
        style="z-index: 1; left: 366px; top: 238px; position: absolute; width: 96px" 
        Text="Date Of Birth"></asp:Label>
    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="custom-dropdown" 
        
        
        style="z-index: 1; left: 143px; top: 374px; position: absolute; height: 26px; width: 320px" 
        TabIndex="6">
    </asp:DropDownList>
    </form>
</body>
</html>
