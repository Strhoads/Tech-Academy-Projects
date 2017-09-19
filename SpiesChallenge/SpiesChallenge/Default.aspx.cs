using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpiesChallenge
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //calendar set dates
            if (!Page.IsPostBack)
            { 
            endCalendar.SelectedDate = DateTime.Now.Date;
            newCalendar.SelectedDate = DateTime.Now.Date.AddDays(14);
            projectedCalendar.SelectedDate = DateTime.Now.Date.AddDays(21);
            }

        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            //500 per day
            TimeSpan totalDurationOfAssignment = newCalendar.SelectedDate.Subtract(projectedCalendar.SelectedDate);
            double totalCost = totalDurationOfAssignment.TotalDays * 500;

            //greater than 21 add 1000
            if (totalDurationOfAssignment.TotalDays > 21)
                totalCost += 1000.00;


            resultLabel.Text = String.Format("Assignment of {0} to assignment {1} is authorized. Budget total: {2:C}",
                codeNameTextBox.Text,
                assignmentTextBox.Text,
                totalCost);


            //less than 14 days gets error
            TimeSpan timeBetweenAssignments = newCalendar.SelectedDate.Subtract(endCalendar.SelectedDate);
            if (timeBetweenAssignments.TotalDays < 14)
            {
                resultLabel.Text = "Error: Must allow at least 2 weeks between previous assignment and new assignment.";

                DateTime earliestNewAssignmentDate = endCalendar.SelectedDate.AddDays(14);

                newCalendar.SelectedDate = earliestNewAssignmentDate;
                newCalendar.VisibleDate = earliestNewAssignmentDate;

            }
                


            
        }
    }
}