<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changeback.aspx.cs" Inherits="changeback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
.img{
    opacity: 0.4;
    filter: alpha(opacity=40); /* For IE8 and earlier */
}

.img:hover {
    opacity: 1.0;
    filter: alpha(opacity=100); /* For IE8 and earlier */
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:ImageButton ID="ImageButton1" runat="server" class="img "
        
        
        style="z-index: 1; left: 75px; top: 200px; position: absolute; height: 227px; width: 362px" alt="NONE"
        onclick="ImageButton1_Click" CssClass="img" />
    <asp:ImageButton ID="ImageButton2" runat="server" 
        
        style="z-index: 1; left: 915px; top: 201px; position: absolute; height: 236px; right: -14px;" 
        CssClass="img" ImageUrl="~/photo/bg2.jpg" onclick="ImageButton2_Click" />
    <asp:ImageButton ID="ImageButton3" runat="server" 
        
        style="z-index: 1; left: 472px; top: 196px; position: absolute; height: 229px; width: 409px" 
        CssClass="img" ImageUrl="~/photo/bg3.jpg" onclick="ImageButton3_Click" />
    <asp:ImageButton ID="ImageButton4" runat="server" 
        
        style="z-index: 1; left: 59px; top: 456px; position: absolute; height: 222px; width: 381px" 
        CssClass="img" ImageUrl="~/photo/bg4.jpg" onclick="ImageButton4_Click" />
    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/photo/bg5.jpeg" 
        
        style="z-index: 1; left: 470px; top: 458px; position: absolute; height: 220px; width: 419px" 
        CssClass="img" onclick="ImageButton5_Click" />
    <asp:Label ID="Label1" runat="server" 
        style="z-index: 1; left: 112px; top: 54px; position: absolute; width: 235px; height: 35px" 
        Text="Select A WallPaper" Font-Bold="True" Font-Italic="True" 
        Font-Size="X-Large"></asp:Label>
    <p>
        <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/photo/bg6.jpg" 
            
            style="z-index: 1; left: 917px; top: 463px; position: absolute; width: 394px; height: 216px" 
            CssClass="img" onclick="ImageButton6_Click" />
    </p>
    </form>
</body>
</html>
