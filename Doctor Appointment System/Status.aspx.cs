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
    public partial class Status : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
        
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            obj.Status = txtstatus.Text;
            obj.Id = Request.QueryString["Id"];
            obj.Bdate = DropDownList1.Text+":" + DropDownList3.Text + DropDownList2.Text;
            int a = obj.statusupdate();
            if (a != 5)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Updated successfully. !');</script>", false);
                
            }
            Response.Redirect("listofbookings.aspx");
        }
    }
}