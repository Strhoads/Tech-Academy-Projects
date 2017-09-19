<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SpiesChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            font-weight: bold;
        }
        .newStyle2 {
            font-size: medium;
        }
        .newStyle3 {
            font-size: medium;
        }
        .newStyle4 {
            font-size: small;
        }
        .newStyle5 {
            font-size: small;
        }
        .newStyle6 {
            font-size: medium;
        }
        .newStyle7 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="222px" ImageUrl="epic-spies-logo.jpg" Width="191px" />
            <br />
            <br />
            <span class="newStyle1">Spy New Assignment Form</span><br />
            <br />
            Spy Code Name:
            <asp:TextBox ID="codeNameTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            New Assignment Name:
            <asp:TextBox ID="assignmentTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <span class="newStyle6">End Date of Previous Assignment</span><br />
            <asp:Calendar ID="endCalendar" runat="server"></asp:Calendar>
            <br />
            <br />
            <span class="newStyle7">Start Date of New Assignment</span><br />
            <asp:Calendar ID="newCalendar" runat="server"></asp:Calendar>
            <br />
            <br />
            Projected End Date of New Assignment<br />
            <asp:Calendar ID="projectedCalendar" runat="server"></asp:Calendar>
            <br />
            <br />
            <asp:Button ID="okButton" runat="server" OnClick="okButton_Click" Text="Assign Spy" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
