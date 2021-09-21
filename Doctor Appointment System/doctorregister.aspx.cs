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
    public partial class doctorregister : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
               
            }
          
          
        }

       
        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
           

            obj.Name = txtname.Value;
            obj.Address = txtaddress.Value;
            obj.Email = txtemailid.Value;
            obj.Phone = txtphone.Value;
            obj.Age = txtage.Value;
            obj.Createpassword = txtpass.Value;
            obj.Department = txtdepartment.Text;
            if(rbtnmale.Checked==true)
            {
                obj.Gender="Male";
            }
            else
            {
                obj.Gender = "Female";
            }
            
            obj.Timein = DropDownList1.Text +'-'+ DropDownList2.Text;
            obj.Timeout = DropDownList3.Text +'-'+ DropDownList4.Text;
            obj.Location = txtlocation.Value;
            int a = obj.insertdoctor();
            if (a != 5)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Added successfully. !');</script>", false);
            }
         
            
            
           

        }

       

       
        }

    }
