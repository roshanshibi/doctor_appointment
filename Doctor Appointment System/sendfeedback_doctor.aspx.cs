using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using doctorappointmentdll;

namespace Doctor_Appointment_System
{
    public partial class sendfeedback_doctor : System.Web.UI.Page
    {
        clsinsert ci = new clsinsert();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnsendmessage_Click(object sender, EventArgs e)
        {

            ci.Feedback = txtmessage.Value;
            int a = ci.insertfeedbackreply();
            if (a != 5)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Send successfully. !');</script>", false);

            }

        }
    }
}