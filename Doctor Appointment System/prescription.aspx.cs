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
    public partial class prescription : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsendmessage_Click(object sender, EventArgs e)
        {

          
            if (Session["Id"] != null)
            {
                obj.Id = Request.QueryString["Id"];
                obj.Memid= Session["Id"].ToString();
                obj.Doctorid = Session["Id"].ToString();
                obj.Name = Session["Name"].ToString();
                obj.Prescription = txtmessage.Value;
                int a = obj.insertprescription();
                if (a != 5)
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Send successfully. !');</script>", false);
                }
            }
        }
    }
}
