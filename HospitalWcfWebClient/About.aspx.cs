using HospitalWcfWebClient.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalWcfWebClient
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        Service1Client client = new Service1Client();

        protected void Button1_Click(object sender, EventArgs e)
        {
            AddVisit visit = new AddVisit();

            visit.PatientID = Convert.ToInt32(Text7.Value);
            visit.Recognition = Text1.Value;
            visit.Recommendation = Text2.Value;
            visit.Date = Convert.ToDateTime(Text6.Value);
            visit.Doctor = Text3.Value;

            string msg = client.Add(visit);
            labelParseMessage.Text = msg.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            getVisits g = new getVisits();
            g = client.GetVisits(Convert.ToInt32(Text7.Value));
            DataTable dt = new DataTable();
            dt = g.visitsTable;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            DeleteVisit del = new DeleteVisit();
            del.Vid = Convert.ToInt32(Text5.Value);
            string msg = client.DelVisit(del);
            labelParseMessage.Text = msg.ToString();
        }
    }
}