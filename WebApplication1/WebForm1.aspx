<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList GridLines="Both" id="messages" runat="server">
        
        <HeaderTemplate>
            Messages
        </HeaderTemplate>
        <ItemTemplate>
                <b>name:</b> 
                <%# Eval("name") %></br>
                <b>e-mail:</b> 
                <%# Eval("email") %></br>
                <b>subject:</b> 
                <%# Eval("subject") %> </br>
                <b>message:</b></br>
                <%# Eval("message") %>            
        </ItemTemplate>
    </asp:DataList>
    </div>
    </form>
</body>
</html>
