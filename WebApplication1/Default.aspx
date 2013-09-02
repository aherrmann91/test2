<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="WebApplication1._Default" %>

<!doctype html>

<html>
<head runat="server">
    <title>Contact Form</title>
    <style type="text/css">
        #Text1 {
            height: 113px;
            width: 130px;
        }
        #TextArea1 {
            height: 180px;
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>Full Name</td>
                <td>
                    <input type="text" name="name" value="" required />
                </td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td>
                    <input type="email" name="email" value="" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" />
                </td>
            </tr>
            <tr>
                <td>Subject</td>
                <td>
                    <input type="text" name="subject" value="" />
                </td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <textarea id="TextArea1" name="S1" required></textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button2" runat="server" Text="Send" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
