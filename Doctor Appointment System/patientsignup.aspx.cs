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
    public partial class patientsignup : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            obj.Name = txtname.Value;
            obj.Age = txtage.Value;
            obj.Phone = txtphone.Value;
            obj.Email = txtemail.Value;
           
            obj.Createpassword = txtcreatepassword.Value;
           if(rbtnmale.Checked==true)
           {
               obj.Gender = "Male";
           }
           else
           {
               obj.Gender = "Female";
           }
           int a = obj.Signupinsert();
            if(a!=5)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Registered successfully. !');</script>", false);
                //Response.Redirect("index.aspx");
            }

          
           
        }

        protected void Btnreset_Click(object sender, EventArgs e)
        {
            txtname.Value = String.Empty;
            txtage.Value = String.Empty;
            txtphone.Value = String.Empty;
            txtcreatepassword.Value = String.Empty;
            txtemail.Value = String.Empty;
          
        }
    }
}