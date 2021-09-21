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
    public partial class updatedoctor : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            { 
            obj.Doctorid = Session["Id"].ToString();
            DataTable Dt = obj.viewdoctorbyId();
            if (Dt.Rows.Count > 0)
            {
                txtname.Value = Dt.Rows[0]["Name"].ToString();
                txtemailid.Value = Dt.Rows[0]["Email"].ToString();
                txtaddress.Value = Dt.Rows[0]["Address"].ToString();
                txtphone.Value = Dt.Rows[0]["Phone"].ToString();
                txtage.Value = Dt.Rows[0]["Age"].ToString();
                rbtnmale.Value = Dt.Rows[0]["Gender"].ToString();
                if (Dt.Rows[0]["Gender"].ToString() == "Male")
                {
                    rbtnmale.Checked = true;
                }
                else
                {
                    rbtnfemale.Checked = true;
                }

                txtdepartment.Text = Dt.Rows[0]["Deptname"].ToString();
                String timein = Dt.Rows[0]["Timein"].ToString();
                string[] words = timein.Split('-');
                DropDownList1.Text = words[0];


                String timeout = Dt.Rows[0]["Timeout"].ToString();
                string[] word = timeout.Split('-');
                DropDownList3.Text = word[0];
                DropDownList4.Text = word[1];
                //DropDownList3.Text = Dt.Rows[0]["Timeout"].ToString();

                txtlocation.Value = Dt.Rows[0]["Location"].ToString();
                txtpass.Value = Dt.Rows[0]["Createpassword"].ToString();
            }
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            obj.Id = Session["Id"].ToString();
            obj.Name = txtname.Value;
            obj.Email = txtemailid.Value;
            obj.Address = txtaddress.Value;
            obj.Phone = txtphone.Value;
            obj.Age = txtage.Value;
            obj.Createpassword = txtpass.Value;
            obj.Deptname= txtdepartment.Text;
            if (rbtnmale.Checked == true)
            {
                obj.Gender = "Male";
            }
            else
            {
                obj.Gender = "Female";
            }

            obj.Timein = DropDownList1.Text + '-' + DropDownList2.Text;
            obj.Timeout = DropDownList3.Text + '-' + DropDownList4.Text;
            obj.Location = txtlocation.Value;
            int a = obj.updatedoctor();
            if (a != 5)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Updated successfully. !');</script>", false);
            }
            
        }
        
       

       
    }
}