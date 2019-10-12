using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HospitalWcfWebClient.ServiceReference1;


namespace HospitalWcfWebClient
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        Service1Client client = new Service1Client();  

        protected void Button1_Click(object sender, EventArgs e)
        {
            InserPatient patient = new InserPatient();

            patient.Name = Text1.Value;
            patient.Surname = Text2.Value;
            patient.Pesel = Convert.ToInt32(Text3.Value);
            patient.Birthdate = Convert.ToDateTime(Text6.Value);
            patient.Phone = Convert.ToInt32(Text5.Value);

            string msg = client.Insert(patient);
            labelParseMessage.Text = msg.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.getData g = new ServiceReference1.getData();
            g = client.GetData();
            DataTable dt = new DataTable();
            dt = g.patientsTable;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            UpdatePatient patient = new UpdatePatient();
            patient.Pid = Convert.ToInt32(Text7.Value);
            patient.Name = Text1.Value;
            patient.Surname = Text2.Value;
            patient.Pesel = Convert.ToInt32(Text3.Value);
            patient.Birthdate = Convert.ToDateTime(Text6.Value);
            patient.Phone = Convert.ToInt32(Text5.Value);
            string msg = client.Update(patient);
            labelParseMessage.Text = msg.ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DeletePatient patient = new DeletePatient();
            patient.Pid = Convert.ToInt32(Text7.Value);
            string msg = client.Delete(patient);
            labelParseMessage.Text = msg.ToString();
        }

    }
}