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
    public partial class currentbookings : System.Web.UI.Page
    {
        clsinsert ci = new clsinsert();
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
            ci.Memid = Session["Id"].ToString();
            DataTable dt = ci.ViewBookingsbyId();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
         protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ci.Id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            int a = ci.deleteappointments();
            if (a == 1)
            {
                gridfill();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully deleted')", true);
               
            }
            
        }
    }
}