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
    public partial class viewprescription : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] == null)
                {
                    
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('You must login first')</script>", false);
                    Response.Redirect("Patientlogin.aspx");
                    
                }
                    
                else
                {
                    gridfill();
                    
                }
               
               
            }
        }

        public void gridfill()
        {
            obj.Memid= Session["Id"].ToString();
            obj.Doctorid = Session["Id"].ToString();
           
            DataTable dt = obj.viewprescription();
            if(dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }
}