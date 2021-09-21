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

    public partial class adminpanel : System.Web.UI.Page
    {
        clsinsert ci = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable Dt = ci.viewdoctor();
            DataTable dt = ci.selectuser();
            DataTable db = ci.appointments();
            DataTable dl = ci.selectdept();
            txtcount.Text = dt.Rows.Count.ToString();
          
            lbldoccount.Text = Dt.Rows.Count.ToString();
            lblappcount.Text= db.Rows.Count.ToString();
            lbldeptcount.Text = dl.Rows.Count.ToString();
        }
       
    }
}