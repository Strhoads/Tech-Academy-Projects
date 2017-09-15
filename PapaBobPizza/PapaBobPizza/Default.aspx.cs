using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PapaBobPizza
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            double total;


            if (babyRadioButton.Checked)
            {
                total = 10.0;
            }
            else if (mamaRadioButton.Checked)
            {
                total = 13.0;
            }
            else
            {
                total = 16.0;
            }

            if (deepRadioButton.Checked)
                total += 2;

            total = (roniCheckBox.Checked) ? total + 1.5 : total;
            total = (onionCheckBox.Checked) ? total + .75 : total;
            total = (greenCheckBox.Checked) ? total + .5 : total;
            total = (redCheckBox.Checked) ? total + .75 : total;
            total = (ewwCheckBox.Checked) ? total + 2 : total;

            if ((roniCheckBox.Checked && greenCheckBox.Checked && ewwCheckBox.Checked) || (roniCheckBox.Checked && redCheckBox.Checked && onionCheckBox.Checked))
                total -= 2;

            resultLabel.Text = total.ToString();
        }
    }
}