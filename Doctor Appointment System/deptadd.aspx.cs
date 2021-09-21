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
    public partial class deptadd : System.Web.UI.Page
    {
        clsinsert obj=new clsinsert();
      
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btninserdept_Click(object sender, EventArgs e)
        {
            obj.Deptname = txtdeptname.Value;



            int a = obj.deptinsert();
            if(a!=5)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "ss", "<script>alert('Added successfully. !');</script>", false);
            }
    }
}
}