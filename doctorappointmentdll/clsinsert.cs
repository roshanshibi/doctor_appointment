using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace doctorappointmentdll
{
    public class clsinsert
    {
        SqlCommand cmd = new SqlCommand();
        //Signup

        public string Id { get; set; }
        public string Name { get; set; }
        public string Age { get; set; }
        public string Phone { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public string Createpassword { get; set; }

        //Dept insert
        public string Deptname { get; set; }

        //Doctor insert
        public string Address{ get; set; }
        public string Timein{ get; set; }
        public string Timeout{ get; set; }
        public string Department { get; set; }
        public string Location { get; set; }

        //Feedback insert
        public string Message { get; set; }

        //Booking
        public string Memid { get; set; }
        public string Doctorid { get; set; }
        public string Time { get; set; }
        public string Status { get; set; }
        public string Date { get; set; }
        public string PatientName { get; set; }
        public string PatNum { get; set; }
        public string Doctorname { get; set; }

        public string Bdate { get; set; }
        public string Bookingdate { get; set; }

        //Notification

        public string Type { get; set; }

        //Feedback reply

        public string Feedback { get; set; }
        
        //Prescription

        public string Prescription { get; set; }



        public int Signupinsert()
        {
            int res = -1;
            try
            {
                if (clsconnection.openconnection())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "insertsignup";
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.Parameters.AddWithValue("@Age", Age);
                    cmd.Parameters.AddWithValue("@Phone", Phone);
                    cmd.Parameters.AddWithValue("@Gender", Gender);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Createpassword", Createpassword);
                    cmd.Connection = clsconnection.con;
                    res = Convert.ToInt32(cmd.ExecuteNonQuery());
                }
            }
            catch (Exception)
            {
            }
            return res;


        }
        public DataTable checklogin()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "logincheck";
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Createpassword", Createpassword);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public DataTable selectuser()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "selectusers";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int deleteuser()
        {
            int res = -5;
             try
            {
                if (clsconnection.openconnection())
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "griddeleteusers";
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Connection = clsconnection.con;
                    res = Convert.ToInt32(cmd.ExecuteNonQuery());
                }
            }
             catch (Exception)
             {

             }
            return res;
        }
        public int deptinsert()
        {
            int res = -1;
            try
            {
                if (clsconnection.openconnection())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "insertdept";
                    cmd.Parameters.AddWithValue("@Deptname", Deptname);
                    cmd.Connection = clsconnection.con;
                    res = Convert.ToInt32(cmd.ExecuteNonQuery());

                }
            }
            catch (Exception)
            {

            }
            return res;
        }
        public DataTable selectdept()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "selectdepts";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int deletedept()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "deptdelete";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

            }
            return res;
        }
        public int insertdoctor()
        {
            int res = -5;
            if(clsconnection.openconnection())
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "insertdoctor";
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Department", Department);
                cmd.Parameters.AddWithValue("@Createpassword", Createpassword);
                cmd.Parameters.AddWithValue("@Timein", Timein);
                cmd.Parameters.AddWithValue("@Timeout", Timeout);  
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Age", Age);
                cmd.Parameters.AddWithValue("@Location", Location);
              
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());
            }
            return res;
        }
        public int feedbackinsert()
        {
            int res = -5;
            try
            {
                if (clsconnection.openconnection())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "feedbackinsert";
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Message", Message);  
                    cmd.Connection = clsconnection.con;
                    res = Convert.ToInt32(cmd.ExecuteNonQuery());

                }
            }
            catch (Exception)
            {

            }
            return res;
        }
        public DataTable viewfeedback()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "viewfeedback";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int deletefeedback()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "deletefeedback";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

            }
            return res;
        }
        public DataTable searchusers()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText ="searchuser";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Name", Name);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int deletedoctor()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "deletedoctor";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

            }
            return res;
        }
        public DataTable viewdoctor()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "viewdoctor";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public DataTable viewdoctorbyId()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "selectbyId";
                cmd.Parameters.AddWithValue("@Id", Doctorid);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int booking()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "insertbooking";
                cmd.Parameters.AddWithValue("@Memid",Memid);
                cmd.Parameters.AddWithValue("@Doctorid", Doctorid );
                cmd.Parameters.AddWithValue("@Time", Time);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.Parameters.AddWithValue("@Date", Date);
                cmd.Parameters.AddWithValue("@Bdate", Bdate);
                cmd.Parameters.AddWithValue("@Bookingdate", Bookingdate);

                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());
            }
            return res;
        }
        public DataTable appointments()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Appointmentfill";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
               // cmd.Parameters.AddWithValue("@Id", Id);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int statusupdate()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdatebookingbyId";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.Parameters.AddWithValue("@Bdate",Bdate);
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

            }
            return res;
        }
        public int deleteappointments()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "deleteappointments";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

            }
            return res;
        }
        public DataTable doctorlogincheck()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "doctorlogincheck";
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Createpassword", Createpassword);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public DataTable selectpatientbyid()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SelectPatientbyId";
                cmd.Parameters.AddWithValue("@Doctorid", Doctorid);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int feedbackinsertdoctor()
        {
            int res = -5;
            try
            {
                if (clsconnection.openconnection())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "feedbackinsertdoctor";
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Message", Message);
                    cmd.Connection = clsconnection.con;
                    res = Convert.ToInt32(cmd.ExecuteNonQuery());

                }
            }
            catch (Exception)
            {

            }
            return res;
        }
        public DataTable viewfeedbackdoctor()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "viewfeedbackdoctor";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }

        public int updatedoctor()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "updatedoctor";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Id",Id);
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Address", Address);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Deptname", Deptname);
                cmd.Parameters.AddWithValue("@Createpassword", Createpassword);
                cmd.Parameters.AddWithValue("@Timein", Timein);
                cmd.Parameters.AddWithValue("@Timeout", Timeout);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Age", Age);
                cmd.Parameters.AddWithValue("@Location", Location);
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

            }
            return res;
        }
        public DataTable ViewBookingsbyId()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "ViewBookingsbyId";
                cmd.Parameters.AddWithValue("@Memid", Memid);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public DataTable searchdoctors()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "searchdoctor1";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Deptname", Deptname);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }

        public DataTable searchappointments()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "searchappointments";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Memid", Memid);
                cmd.Parameters.AddWithValue("@PatientName", PatientName );
                
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int insertnotifcation()
        {
            int res = -5;
            try
            {
                if (clsconnection.openconnection())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "insertnotifcation";
                    cmd.Parameters.AddWithValue("@Message",Message);
                    cmd.Parameters.AddWithValue("@Type", Type);
                   
                    cmd.Connection = clsconnection.con;
                    res = Convert.ToInt32(cmd.ExecuteNonQuery());

                }
            }
            catch (Exception)
            {

            }
            return res;
        }


        public DataTable viewnotification()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "viewnotificationdoctors";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Type", Type);


                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public DataTable selectbyIdpatient()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "selectbyIdpatient";
                cmd.Parameters.AddWithValue("@Id", Id);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }

        public int insertfeedbackreply()
        {
            int res = -5;
            try
            {
                if (clsconnection.openconnection())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "insertfeedbackreply";
                    cmd.Parameters.AddWithValue("@Feedback",Feedback);
                    cmd.Connection = clsconnection.con;
                    res = Convert.ToInt32(cmd.ExecuteNonQuery());
                }
            }
            catch (Exception)
            {

            }
            return res;
        }

        public DataTable viewfeedbackreply()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "viewfeedbackreply";
                cmd.Parameters.AddWithValue("@Id", Id);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }

        public int updatepatient()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "updatepatient";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@Name", Name);
                cmd.Parameters.AddWithValue("@Age", Age);
                cmd.Parameters.AddWithValue("@Phone", Phone);
                cmd.Parameters.AddWithValue("@Gender", Gender);
                cmd.Parameters.AddWithValue("@Email", Email); 
                cmd.Parameters.AddWithValue("@Createpassword", Createpassword);
                
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

            }
            return res;
        }

        public int insertprescription()
        {
            int res = -1;
            try
            {
                if (clsconnection.openconnection())
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "insertprescription";
                    cmd.Parameters.AddWithValue("@Name", Name);
                    cmd.Parameters.AddWithValue("@Prescription", Prescription);

                    cmd.Parameters.AddWithValue("@Memid", Memid);
                    cmd.Parameters.AddWithValue("@Doctorid", Doctorid);
                  
                    cmd.Connection = clsconnection.con;
                    res = Convert.ToInt32(cmd.ExecuteNonQuery());

                }
            }
            catch (Exception)
            {

            }
            return res;
        }

        public DataTable viewprescription()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "viewprescription";
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Parameters.AddWithValue("@Memid",Memid);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public DataTable searchdept()
        {
            DataTable dt = new DataTable();
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "searchdept";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
               
                cmd.Parameters.AddWithValue("@Deptname", Deptname);
                da.SelectCommand.Connection = clsconnection.con;
                da.Fill(dt);
            }
            return dt;
        }
        public int deletefeedbackdoctor()
        {
            int res = -5;
            if (clsconnection.openconnection())
            {
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "deletefeedbackdoctor";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@Id", Id);
                cmd.Connection = clsconnection.con;
                res = Convert.ToInt32(cmd.ExecuteNonQuery());

            }
            return res;
        }
    }
}
    
