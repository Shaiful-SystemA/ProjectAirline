using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectAirline
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (AirlineEntities1 cntx = new AirlineEntities1())
            {
                var flight = cntx.FlightDetails.FirstOrDefault(m => m.FlightNo == FlightNOTextbox.Text);
                if(flight !=null)
                {
                    FromTextbox.Text = flight.FromCity;
                    ToTextbox.Text = flight.ToCity;
                    DepartureDateTextbox.Text = flight.DateofDeparture.ToString();
                    DepartureTimeTextbox.Text = flight.DepartureTime.ToString();
                    FlightNOTextbox.Text = flight.FlightNo;

                }


            }

        }

        protected void Update_Click(object sender, EventArgs e)
        {


            using (AirlineEntities1 cntx = new AirlineEntities1())
            {
                var flight = cntx.FlightDetails.FirstOrDefault(m => m.FlightNo == FlightNOTextbox.Text);
                if (flight != null)
                {
                    flight.FromCity = FromTextbox.Text;
                    flight.ToCity =ToTextbox.Text  ;
                    flight.DateofDeparture= Convert.ToDateTime(DepartureDateTextbox.Text);
                    flight.DepartureTime = TimeSpan.Parse(DepartureTimeTextbox.Text);
                    FlightNOTextbox.Text = flight.FlightNo;
                    cntx.SaveChanges();
                    ClearFields();
                }


            }


        }


        private void ClearFields()
        {
            FromTextbox.Text = string.Empty;
            ToTextbox.Text = string.Empty;
            DepartureDateTextbox.Text = string.Empty;
            DepartureTimeTextbox.Text = string.Empty;
            FlightNOTextbox.Text = string.Empty;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                                
            //FromTextbox.Text = GridView1.SelectedRow.Cells[1].Text;
            //ToTextbox.Text = GridView1.SelectedRow.Cells[2].Text;
            //DepartureDateTextbox.Text = GridView1.SelectedRow.Cells[3].Text;
            //DepartureTimeTextbox.Text = GridView1.SelectedRow.Cells[4].Text;
            //FlightNOTextbox.Text = GridView1.SelectedRow.Cells[5].Text;

            FromTextbox.Text = GridView1.SelectedRow.Cells[2].Text;
            ToTextbox.Text = GridView1.SelectedRow.Cells[3].Text;
            DepartureDateTextbox.Text = GridView1.SelectedRow.Cells[4].Text;
            DepartureTimeTextbox.Text = GridView1.SelectedRow.Cells[5].Text;
            FlightNOTextbox.Text = GridView1.SelectedRow.Cells[1].Text;





        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AirlineEntities1 db = new AirlineEntities1();
            FlightDetail Flight = new FlightDetail();

            Flight.FlightNo =TextBox1.Text;
            Flight.FromCity = TextBox4.Text;
            Flight.ToCity = TextBox5.Text;

            if (!string.IsNullOrEmpty(TextBox2.Text))
            {
                Flight.DateofDeparture = DateTime.Parse(TextBox2.Text);
            }

            if (!string.IsNullOrEmpty(TextBox3.Text))
            {
                Flight.DepartureTime = TimeSpan.Parse(TextBox3.Text);
            }

            var result = from S in db.FlightDetails
                         where (S.FlightNo == Flight.FlightNo || S.FromCity == Flight.FromCity || S.DateofDeparture == Flight.DateofDeparture || S.DepartureTime==Flight.DepartureTime || S.ToCity==Flight.ToCity)
                         select new { S.FlightNo, S.FromCity, S.ToCity, S.DateofDeparture, S.DepartureTime };






            //Flight.FromCity = TextBox1.Text;
            //var result1 = from S in db.FlightDetails
            //              where S.FromCity == Flight.FromCity
            //             select new { S.FlightNo, S.FromCity, S.ToCity, S.DateofDeparture, S.DepartureTime };

            //Flight.DateofDeparture = DateTime.Parse(TextBox1.Text);
            //var result2 = from S in db.FlightDetails
            //              where S.DateofDeparture == Flight.DateofDeparture
            //              select new { S.FlightNo, S.FromCity, S.ToCity, S.DateofDeparture, S.DepartureTime };



            GridView1.DataSource = result.ToList();
            //GridView1.DataSource = result1.ToList();
       //     GridView1.DataSource = result2.ToList();

            GridView1.DataBind();


        }


        public void BindGridView()
        {
            AirlineEntities1 db = new AirlineEntities1();
            var result = from S in db.FlightDetails
                         select new { S.FlightNo, S.FromCity, S.ToCity, S.DateofDeparture, S.DepartureTime };

           GridView1.DataSource = result.ToList();
          GridView1.DataBind();

         //   GridView1.Tolist(result);
        }

        //public void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //   BindGridView();
        //}

        protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGridView();
        }

        protected void BtnCreateFlight1_Click(object sender, EventArgs e)
        {

            using(AirlineEntities1 cntx = new AirlineEntities1())
            {
                FlightDetail addFlight = new FlightDetail();

                addFlight.FlightNo = FlightNumber1TextBox.Text;
                addFlight.FromCity = FromCity1DropDown.Text;
                addFlight.ToCity = ToCity1DropDown.Text;
                if (DateOfDeparture1Textbox.Text !=string.Empty)
                {
                    addFlight.DateofDeparture = Convert.ToDateTime(DateOfDeparture1Textbox.Text);
                }
                if (DepartureTime1TextBox.Text != string.Empty)
                {
                    addFlight.DepartureTime = TimeSpan.Parse(DepartureTime1TextBox.Text);
                }
                if (ArrivalTime1Texbox.Text != string.Empty)
                {
                    addFlight.ArrivalTime = TimeSpan.Parse(ArrivalTime1Texbox.Text);
                }
                if (Seats1TextBox.Text != string.Empty)
                {
                    addFlight.Seats = Convert.ToInt32(Seats1TextBox.Text);
                }
                if (StatusDropdown1.Text != string.Empty)
                {
                    addFlight.Status = StatusDropdown1.Text;
                }
                if (Price1TextBox.Text != string.Empty)
                {
                    addFlight.price = Convert.ToDecimal(Price1TextBox.Text);
                }
                //cntx.FlightDetail.AddObject(addFlight);
                cntx.FlightDetails.Add(addFlight);
               // cntx.AddToFlightDetails(addFlight);
                cntx.SaveChanges();

              //  flight.DateofDeparture = Convert.ToDateTime(DepartureDateTextbox.Text);
               // flight.DepartureTime = TimeSpan.Parse(DepartureTimeTextbox.Text);
            }

        }

    }
}