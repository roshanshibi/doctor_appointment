using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using doctorappointmentdll;
using System.Data;
using System.Data.SqlClient;

namespace Doctor_Appointment_System
{
    public partial class Patientlogin : System.Web.UI.Page
    {
        clsinsert ab = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            ab.Email = txtmail.Value;
            ab.Createpassword = txtpass.Value;
            DataTable dt = ab.checklogin();
           
            if (dt.Rows.Count > 0)
            {
                Session["Id"] = dt.Rows[0]["Id"].ToString();
                Session["Name"] = dt.Rows[0]["Name"].ToString();
                Session["Email"] = dt.Rows[0]["Email"].ToString();
           
     
             
                Response.Redirect("index.aspx");
            }
                if(txtmail.Value=="admin@gmail.com"&&txtpass.Value=="admin")
                {
                    Response.Redirect("adminpanel.aspx");
                }
            else
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Invalid user')</script>", false);
            }
        }
        }
    }
