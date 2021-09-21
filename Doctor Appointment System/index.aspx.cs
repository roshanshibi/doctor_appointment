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
    public partial class index : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void btnsendmessage_Click(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                obj.Memid = Session["Id"].ToString();
                obj.Name = Session["Name"].ToString();
                obj.Email = Session["Email"].ToString();
                obj.Message = txtmessage.Value;
                int a = obj.feedbackinsert();
                if (a != 5)
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Send successfully. !');</script>", false);
                }
            }

            
           
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void btnappointments_Click(object sender, EventArgs e)
        {
          
        }

       

      
    }
}