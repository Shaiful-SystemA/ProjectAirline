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

            this.MaintainScrollPositionOnPostBack = true;
            

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{

        //    using (AirlineEntities1 cntx = new AirlineEntities1())
        //    {
        //        var flight = cntx.FlightDetails.FirstOrDefault(m => m.FlightNo == FlightNOTextbox.Text);
        //        if(flight !=null)
        //        {
        //            //FromTextbox.Text = flight.FromCity;
        //            //ToTextbox.Text = flight.ToCity;
        //            DepartureDateTextbox.Text = flight.DateofDeparture.ToString();
        //            DepartureTimeTextbox.Text = flight.DepartureTime.ToString();
        //            SeatTextbox.Text = flight.Seats.ToString();
        //            FlightNOTextbox.Text = flight.FlightNo;
        //            //StatusTextbox.Text = flight.Seats.ToString();
        //            PriceTextbox.Text = flight.price.ToString();
        //        }


        //    }

        //}

        protected void Update_Click(object sender, EventArgs e)
        {
            

            try
            {

                using (AirlineEntities1 cntx = new AirlineEntities1())
                {
                    var flight = cntx.FlightDetails.FirstOrDefault(m => m.FlightNo == FlightNOTextbox.Text);
                    if (flight != null)
                    {
                        //flight.FromCity = FromTextbox.Text;
                        //flight.ToCity =ToTextbox.Text  ;
                        flight.DateofDeparture = Convert.ToDateTime(DepartureDateTextbox.Text);
                        flight.ArrivalTime = TimeSpan.Parse(ArrivalTimeTextbox.Text);

                        flight.DepartureTime = TimeSpan.Parse(DepartureTimeTextbox.Text);
                        flight.Seats = Convert.ToInt32(SeatTextbox.Text);
                        // flight.Status = StatusTextbox.Text;
                        flight.price = Convert.ToDecimal(PriceTextbox.Text);
                        FlightNOTextbox.Text = flight.FlightNo;

                        flight.FromCity = UpdateFromCity.Text;
                        flight.ToCity = UpdateToCityDropDown.Text;
                        flight.Status = UpdateStatusDrop.Text;

                        cntx.SaveChanges();
                        UpdateFlightLabel.Visible = true;
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel2();", true);
                        UpdateFlightLabel.Text = "Form has been submitted successfully.";
                        ClearFields();
                    }
                }

            }

              catch (Exception ex)
            {
                // Log the exception    
                UpdateFlightError.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel4();", true);
                UpdateFlightError.Text = "Invalid Input Field Please Check your input field";
            }
            finally
            {
            }  


        }


        private void ClearFields()
        {
          //  FromTextbox.Text = string.Empty;
           // ToTextbox.Text = string.Empty;
            DepartureDateTextbox.Text = string.Empty;
            DepartureTimeTextbox.Text = string.Empty;
            FlightNOTextbox.Text = string.Empty;
            ArrivalTimeTextbox.Text = string.Empty;
            SeatTextbox.Text = string.Empty;
            //StatusTextbox.Text = string.Empty;
            PriceTextbox.Text = string.Empty;
            UpdateFromCity.Text = string.Empty;
            UpdateToCityDropDown.Text = string.Empty;
            UpdateStatusDrop.Text = string.Empty;
        }

        private void ClearFields2()
        {
  FlightNumber1TextBox.Text = string.Empty;
FromCity1DropDown.Text = string.Empty;
ToCity1DropDown.Text = string.Empty;
DateOfDeparture1Textbox.Text = string.Empty;
DepartureTime1TextBox.Text = string.Empty;
ArrivalTime1Texbox.Text = string.Empty;
Seats1TextBox.Text = string.Empty;
StatusDropdown1.Text = string.Empty;
Price1TextBox.Text = string.Empty;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                                
            //FromTextbox.Text = GridView1.SelectedRow.Cells[1].Text;
            //ToTextbox.Text = GridView1.SelectedRow.Cells[2].Text;
            //DepartureDateTextbox.Text = GridView1.SelectedRow.Cells[3].Text;
            //DepartureTimeTextbox.Text = GridView1.SelectedRow.Cells[4].Text;
            //FlightNOTextbox.Text = GridView1.SelectedRow.Cells[5].Text;
            UpdateFlightLabel.Text = "";
            NewFlight.Text = "";

          //  FromTextbox.Text = GridView1.SelectedRow.Cells[2].Text;
            //ToTextbox.Text = GridView1.SelectedRow.Cells[3].Text;
            DepartureDateTextbox.Text = GridView1.SelectedRow.Cells[4].Text;
            DepartureTimeTextbox.Text = GridView1.SelectedRow.Cells[5].Text;
            FlightNOTextbox.Text = GridView1.SelectedRow.Cells[1].Text;
            ArrivalTimeTextbox.Text = GridView1.SelectedRow.Cells[6].Text;
            SeatTextbox.Text = GridView1.SelectedRow.Cells[7].Text;
            //StatusTextbox.Text = GridView1.SelectedRow.Cells[8].Text;
            PriceTextbox.Text = GridView1.SelectedRow.Cells[9].Text;
            UpdateFromCity.Text = GridView1.SelectedRow.Cells[2].Text;
            UpdateToCityDropDown.Text = GridView1.SelectedRow.Cells[3].Text;
            UpdateStatusDrop.Text = GridView1.SelectedRow.Cells[8].Text;


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AirlineEntities1 db = new AirlineEntities1();
            FlightDetail Flight = new FlightDetail();


            UpdateFlightLabel.Text = "";

            Flight.FlightNo =TextBox1.Text;
         //   Flight.FromCity = TextBox4.Text;
        //    Flight.ToCity = TextBox5.Text;
         //   Flight.Status = TextBox9.Text;

            Flight.FromCity = FromCityDropDown.Text;
            Flight.ToCity = SearchToCityDropDown.Text;
            Flight.Status = SearchStatusDropdown.Text;


            if (!string.IsNullOrEmpty(TextBox2.Text))
            {
                Flight.DateofDeparture = DateTime.Parse(TextBox2.Text);
            }

            if (!string.IsNullOrEmpty(TextBox3.Text))
            {
                Flight.DepartureTime = TimeSpan.Parse(TextBox3.Text);
            }

            if (!string.IsNullOrEmpty(TextBox6.Text))
            {
                Flight.ArrivalTime = TimeSpan.Parse(TextBox6.Text);
            }

            if (!string.IsNullOrEmpty(TextBox7.Text))
            {
                Flight.Seats = Int32.Parse(TextBox7.Text);
            }

            if (!string.IsNullOrEmpty(TextBox8.Text))
            {
                Flight.price = Decimal.Parse(TextBox8.Text);
            }

            var result = from S in db.FlightDetails
                         where (S.FlightNo == Flight.FlightNo || S.FromCity == Flight.FromCity || S.DateofDeparture == Flight.DateofDeparture || S.DepartureTime==Flight.DepartureTime || S.ToCity==Flight.ToCity || S.ArrivalTime==Flight.ArrivalTime || S.Seats==Flight.Seats || S.Status==Flight.Status || S.price==Flight.price )
                         select new { S.FlightNo, S.FromCity, S.ToCity, S.DateofDeparture, S.DepartureTime,S.ArrivalTime,S.Seats,S.Status,S.price};






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
                         select new { S.FlightNo, S.FromCity, S.ToCity, S.DateofDeparture, S.DepartureTime ,S.ArrivalTime,S.Seats,S.Status,S.price};

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
            try
            {
                using (AirlineEntities1 cntx = new AirlineEntities1())
                {
                    FlightDetail addFlight = new FlightDetail();

                    addFlight.FlightNo = FlightNumber1TextBox.Text;
                    addFlight.FromCity = FromCity1DropDown.Text;
                    addFlight.ToCity = ToCity1DropDown.Text;
                    if (DateOfDeparture1Textbox.Text != string.Empty)
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
                    ClearFields2();
                   // NewFlight.Text = "New Flight Added";
                        NewFlight.Visible = true;
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel();", true);
                        NewFlight.Text = "Form has been submitted successfully.";

                    //  flight.DateofDeparture = Convert.ToDateTime(DepartureDateTextbox.Text);
                    // flight.DepartureTime = TimeSpan.Parse(DepartureTimeTextbox.Text);
                }
            }
            catch (Exception ex)
            {
                // Log the exception        
                ForInputError.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "HideLabel3();", true);

                ForInputError.Text = "Invalid Input Field Please Check your input field";
            }
            finally
            {
            }  
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox2.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Calendar2.Visible = true;

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            DepartureDateTextbox.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;

        }

        protected void UpdateDelete_Click(object sender, EventArgs e)
        {
                        using (AirlineEntities1 cntx = new AirlineEntities1())
            {
                var flight = cntx.FlightDetails.FirstOrDefault(m => m.FlightNo == FlightNOTextbox.Text);
                if (flight != null)
                {
                   // cntx.Delete(data);
                    cntx.FlightDetails.Remove(flight);

                    cntx.SaveChanges();
                    ClearFields();
                }

                }
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Calendar3.Visible = true;
        }

        protected void Calendar3_SelectionChanged(object sender, EventArgs e)
        {
            DateOfDeparture1Textbox.Text = Calendar3.SelectedDate.ToShortDateString();
            Calendar3.Visible = false;
        }

        protected void Calendar3_SelectionChanged1(object sender, EventArgs e)
        {
            DateOfDeparture1Textbox.Text = Calendar3.SelectedDate.ToShortDateString();
            Calendar3.Visible = false;
        }

        protected void CreateClear_Click(object sender, EventArgs e)
        {
            ClearFields2();
        }

        protected void DepartureTime1TextBox_TextChanged(object sender, EventArgs e)
        {

        }

    }
}