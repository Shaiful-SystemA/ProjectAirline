using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectAirline
{
    public partial class BookingSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();


            }
        //    GridViewHelper helper = new GridViewHelper(this.GridView1);

        }

//        TrasactionDetail 

        public void BindGridView()
        {
            AirlineEntities1 db = new AirlineEntities1();
            var result = from S in db.TrasactionDetails
                         select new {S.TransactionId,S.Userid,S.BookingDate,S.FlightNo,S.DepartureDate,S.TotalNoOfPassengers,S.TotalPrice};

            GridView1.DataSource = result.ToList();
            GridView1.DataBind();

            //   GridView1.Tolist(result);
        }
    }
}