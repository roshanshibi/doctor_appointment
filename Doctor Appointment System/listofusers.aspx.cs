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
    public partial class listofusers : System.Web.UI.Page
    {
        clsinsert ci = new clsinsert();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridfill();
            }

        }
        public void gridfill()
        {
            DataTable dt = ci.selectuser();
            if(dt.Rows.Count>0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            ci.Id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            int a = ci.deleteuser();
            if(a == 1)
            {
                gridfill();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Successfully deleted')", true);
            }


        }

     


        protected void btnsearch_Click(object sender, EventArgs e)
        {
            if (txtsearchuser.Text != "")
            {
                ci.Name = txtsearchuser.Text;
                DataTable dt = ci.searchusers();
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
               
                if (dt.Rows.Count == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No records of patients')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Patient details fetched')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please enter the name')", true);
            }
        }

       
        }
    }
