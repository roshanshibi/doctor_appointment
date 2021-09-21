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
    public partial class viewregistereddoctors : System.Web.UI.Page
    {
        clsinsert obj = new clsinsert();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridfill();
            }
        }

        public void gridfill()
        {
            DataTable dt = obj.viewdoctor();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            obj.Id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            int a = obj.deletedoctor();
            if (a == 1)
            {
                gridfill();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully deleted')", true);
            }

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            if (txtsearchdocdept.Text != "")
            {
                obj.Name = txtsearchdocdept.Text;
                obj.Deptname = txtsearchdocdept.Text;
                DataTable dt = obj.searchdoctors();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }

                if (dt.Rows.Count == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No records of doctors')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Doctor details fetched')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter name or department')", true);
            }
        }
    }
}