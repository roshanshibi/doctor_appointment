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
    public partial class doctorlogin : System.Web.UI.Page
    {
        clsinsert ab = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            ab.Email = dtxtmail.Value;
            ab.Createpassword = dtxtpass.Value;
            DataTable dt = ab.doctorlogincheck();
            if (dt.Rows.Count > 0)
            {
                Session["Id"] = dt.Rows[0]["Id"].ToString();
                Session["Name"] = dt.Rows[0]["Name"].ToString();
                Session["Email"] = dt.Rows[0]["Email"].ToString();
                Session["Doctorid"] = dt.Rows[0]["Id"];
                Response.Redirect("doctorpanel.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Invalid')</script>", false);
            }
           //Session[""]=dt.Rows[0]["Id"];
        }
    }
}