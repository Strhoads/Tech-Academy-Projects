<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PapaBobPizza.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 19px;
            font-weight: 900;
        }
        .newStyle2 {
            font-family: Arial;
            font-size: x-large;
        }
        .newStyle3 {
            font-family: Arial, Helvetica, sans-serif;
            font-weight: 900;
        }
        .newStyle4 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: x-large;
            font-weight: 900;
        }
        .newStyle5 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="papaImage" runat="server" ImageUrl="PapaBob.png" />
&nbsp;&nbsp;&nbsp;&nbsp; <span class="newStyle3">&nbsp;</span><span class="newStyle4">Papa Bob&#39;s Pizza and Software</span><br />
            <br />
            <asp:RadioButton ID="babyRadioButton" runat="server" GroupName="Size" Text="Baby Bob Size(10&quot;) - $10" />
            <br />
            <asp:RadioButton ID="mamaRadioButton" runat="server" GroupName="Size" Text="Mama Bob Size(13&quot;) - $13" />
            <br />
            <asp:RadioButton ID="papaRadioButton" runat="server" GroupName="Size" Text="Papa Bob Size (16&quot;) - $16" />
            <br />
            <br />
            <asp:RadioButton ID="thinRadioButton" runat="server" GroupName="Crust" Text="Thin Crust" />
            <br />
            <asp:RadioButton ID="deepRadioButton" runat="server" GroupName="Crust" Text="Deep Dish (+$2)" />
            <br />
            <br />
            <asp:CheckBox ID="roniCheckBox" runat="server" Text="Pepperoni(+$1.50)" />
            <br />
            <asp:CheckBox ID="onionCheckBox" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" Text="Onions(+$0.75)" />
            <br />
            <asp:CheckBox ID="greenCheckBox" runat="server" Text="Green Peppers(+$0.50)" />
            <br />
            <asp:CheckBox ID="redCheckBox" runat="server" Text="Red Peppers(+$0.75)" />
            <br />
            <asp:CheckBox ID="ewwCheckBox" runat="server" Text="Anchovies(+$2)" />
            <br />
            <br />
            <strong>Papa Bob&#39;s <span class="newStyle5">Special Deal</span></strong><br />
            <br />
            Save 2.00 when you add Pepperoni, Green Peppers and Anchovies OR Pepperoni, Red Peppers and Onion to your Pizza.<br />
            <br />
            <asp:Button ID="okButton" runat="server" OnClick="okButton_Click" Text="Purchase" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
            <br />
            <br />
            Sorry, at this time you can only order one pizza online, and pick-up only ... we need a better website!</div>
    </form>
</body>
</html>
