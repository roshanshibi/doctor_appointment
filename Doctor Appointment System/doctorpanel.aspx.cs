using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using doctorappointmentdll;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Doctor_Appointment_System
{
    public partial class doctorpanel : System.Web.UI.Page
    {
        
        clsinsert obj = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = obj.selectuser();
                txtcount.Text = dt.Rows.Count.ToString();
                DataTable dbl = obj.viewdoctor();
                lbldoccount.Text =dbl.Rows.Count.ToString();
                obj.Doctorid = Session["Id"].ToString();
                DataTable Dt = obj.viewdoctorbyId();
                if (Dt.Rows.Count > 0)
                {
                    lblwelcome.Text = "Welcome " + Dt.Rows[0]["Name"].ToString();
                }
            }
        }

        protected void btnsendmessage_Click(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                obj.Doctorid = Session["Id"].ToString();
                obj.Name = Session["Name"].ToString();
                obj.Email = Session["Email"].ToString();
                obj.Message = txtmessage.Value;
                int a = obj.feedbackinsertdoctor();
                if (a != 5)
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Send successfully. !');</script>", false);
                }
            }
        }

        protected void btnprofile_Click(object sender, EventArgs e)
        {
           
        }
    }
}