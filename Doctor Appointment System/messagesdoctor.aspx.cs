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
    public partial class messagesdoctor : System.Web.UI.Page
    {
        clsinsert ci = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridfill();
            }

        }

        public void gridfill()
        {
            ci.Type = "Doctors";
            DataTable dt = ci.viewnotification();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}