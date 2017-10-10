using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace stringDemo
{
    public partial class StringBuilderDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            string[] text = myTextBox.Text.Split(',');
            for (int i = 0; i < text.Length; i++)
            {
                sb.Append(text[i]);
                sb.Append(" ");
                sb.Append("<br />");
            }
            resultLabel.Text = sb.ToString();
        }
    }
}