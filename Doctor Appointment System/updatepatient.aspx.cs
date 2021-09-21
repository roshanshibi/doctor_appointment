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
    public partial class updatepatient : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["Id"] == null)
                {

                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('You must login first')</script>", false);
                    Response.Redirect("Patientlogin.aspx");

                }

                else
                { 
            obj.Id = Session["Id"].ToString();
            DataTable dt = obj.selectbyIdpatient();
            if (dt.Rows.Count > 0)
            {
                txtname.Value = dt.Rows[0]["Name"].ToString();
                txtage.Value = dt.Rows[0]["Age"].ToString();
                txtphone.Value = dt.Rows[0]["Phone"].ToString();
                if (dt.Rows[0]["Gender"].ToString() == "Male")
                {
                    rbtnmale.Checked = true;
                }
                else
                {
                    rbtnfemale.Checked = true;
                }
                txtemail.Value = dt.Rows[0]["Email"].ToString();
                txtcreatepassword.Value = dt.Rows[0]["Createpassword"].ToString();
            }
            }
        }
        }
        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            obj.Id = Session["Id"].ToString();
            obj.Name = txtname.Value;
            obj.Age = txtage.Value;
            obj.Phone = txtphone.Value;
            if(rbtnmale.Checked==true)
            {
                obj.Gender = "Male";
            }
            else
            {
                obj.Gender = "Female";
            }
            obj.Email = txtemail.Value;
            obj.Createpassword = txtcreatepassword.Value;
            int a = obj.updatepatient();
            if (a != 5)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Updated successfully. !');</script>", false);
            }
        }
    }
}