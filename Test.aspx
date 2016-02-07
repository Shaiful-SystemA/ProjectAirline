<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="ProjectAirline.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Free CSS template by ChocoTemplates.com</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <style type="text/css">
            .auto-style1 {
                height: 16px;
            }
            .auto-style2 {
                width: 210px;
                text-align: left;
            }
            .auto-style3 {
                height: 16px;
                width: 210px;
                text-align: left;
            }
            .auto-style4 {
                width: 113px;
                text-align: left;
            }
            .auto-style5 {
                height: 16px;
                width: 113px;
                text-align: left;
            }
            .auto-style7 {
                height: 14px;
            }
            .auto-style8 {
                width: 210px;
                text-align: left;
                height: 14px;
            }
            .auto-style9 {
                height: 14px;
                width: 113px;
                text-align: left;
            }
            .auto-style10 {
                height: 6px;
            }
            .auto-style11 {
                height: 6px;
                width: 210px;
                text-align: left;
            }
            .auto-style12 {
                height: 6px;
                width: 113px;
                text-align: left;
            }
        </style>
</head>
<body>
    <!-- Header -->
<div id="header">
	<div class="shell">
		<!-- Logo + Top Nav -->
		<div id="top">
			<h1><a href="#">Wiki Airlines</a></h1>
			<div id="top-navigation">
				Welcome <a href="#"><strong>Administrator</strong></a>
				<span>|</span>
				<a href="#">Help</a>
				<span>|</span>
				<a href="#">Profile Settings</a>
				<span>|</span>
				<a href="#">Log out</a>
			</div>
		</div>
		<!-- End Logo + Top Nav -->
		
		<!-- Main Nav -->
		<div id="navigation">
			<ul>
			    <li><a href="#" class="active"><span>Dashboard</span></a></li>
			    <li><a href="#"><span>New Articles</span></a></li>
			    <li><a href="#"><span>User Management</span></a></li>
			    <li><a href="#"><span>Photo Gallery</span></a></li>
			    <li><a href="#"><span>Products</span></a></li>
			    <li><a href="#"><span>Services Control</span></a></li>
			</ul>
		</div>
		<!-- End Main Nav -->
	</div>
</div>
<!-- End Header -->



    <!-- Container -->
<div id="container">
	<div class="shell">

        		<!-- Main -->
		<div id="main">
			<div class="cl">&nbsp;</div>
			
            <!-- Content -->
              <div id="content">

    <form id="form1" runat="server" >
  

             <!--Create Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2>Create New Flights</h2>
					</div>
					<!-- End Box Head -->
			    <br />
                    <center>

                        <br />
                        <table dir="rtl" style="width:100%;">
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="FlightNumber1TextBox" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style4" style="text-align: left">Flight Number</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1"></td>
                                <td class="auto-style3">
                                    <asp:DropDownList ID="FromCity1DropDown" runat="server">
                                        <asp:ListItem>Singapore</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Shanghai</asp:ListItem>
                                        <asp:ListItem>Bangkok</asp:ListItem>
                                        <asp:ListItem>Taipei</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style5">From City</td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:DropDownList ID="ToCity1DropDown" runat="server">
                                        <asp:ListItem>Singapore</asp:ListItem>
                                        <asp:ListItem>Shanghai</asp:ListItem>
                                        <asp:ListItem>Taipei</asp:ListItem>
                                        <asp:ListItem>Bangkok</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style4">To City</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="DateOfDeparture1Textbox" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style4">Date Of Departure </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="DepartureTime1TextBox" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style4">Departure Time</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style2">
                                    <asp:TextBox ID="ArrivalTime1Texbox" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style4">Arrival Time</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style7"></td>
                                <td class="auto-style8">
                                    <asp:TextBox ID="Seats1TextBox" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style9">Seats</td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style7">&nbsp;</td>
                                <td class="auto-style8">
                                    <asp:DropDownList ID="StatusDropdown1" runat="server">
                                        <asp:ListItem>Availabe</asp:ListItem>
                                        <asp:ListItem>Not Available</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style9">Status</td>
                                <td class="auto-style7"></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                                <td class="auto-style11">
                                    <asp:TextBox ID="Price1TextBox" runat="server"></asp:TextBox>
                                </td>
                                <td class="auto-style12">Price</td>
                                <td class="auto-style10"></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"></td>
                                <td class="auto-style11">
                                    <asp:Button ID="BtnCreateFlight1" runat="server" OnClick="BtnCreateFlight1_Click" Text="Submit" />
                                </td>
                                <td class="auto-style12">&nbsp;</td>
                                <td class="auto-style10"></td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
        <br />
        <br />
                			
 </center>

</div>
	<!-- Create END Box -->





     <!--Search Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2>Search Flights</h2>
					</div>
					<!-- End Box Head -->
			    <br />
                    <center>

        Flight Number :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        From City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        To City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br/>
        Date of departure:&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
        <br />
        Departure Time:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />
        <br />
        <br />
                			
 </center>

</div>
	<!-- Search END Box -->


  <!--Flight Schedule Box -->
        <div class="box">
            					<!-- Box Head -->
					<div class="box-head">
						<h2>Current Flight Schedule</h2>
					</div>
					<!-- End Box Head -->
	  <br />

        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" style="text-align:center" pagesize="15" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" AutoGenerateSelectButton="True" >
              <Columns>
                 <asp:BoundField DataField="FlightNo" HeaderText="Flight No" />
                <asp:BoundField DataField="FromCity" HeaderText="From City" />
                <asp:BoundField DataField="ToCity" HeaderText="To City" />
                <asp:BoundField DataField="DateofDeparture" HeaderText="Date of Departure" />
                <asp:BoundField DataField="DepartureTime" HeaderText="DepartureTime" />
                  <asp:CommandField ButtonType="Button" SelectText="Update Flights" ShowSelectButton="True">
                  <ItemStyle ForeColor="#993366" />
                  </asp:CommandField>
            </Columns>
        </asp:GridView>
                
        </div>

  <!-- END Flight Schedule Box -->

        



             <!--Update Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2>Update Flights</h2>
					</div>
					<!-- End Box Head -->
			    <br />
 <center>
        From<br />
        <asp:TextBox ID="FromTextbox" runat="server"></asp:TextBox>
        <br />
        <br />
        To<br />
        <asp:TextBox ID="ToTextbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        Depart Date<br />
        <asp:TextBox ID="DepartureDateTextbox" runat="server"></asp:TextBox>
        <br />
        <br />
        Departure Time<br />
        <asp:TextBox ID="DepartureTimeTextbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Flight No<br />
        <asp:TextBox ID="FlightNOTextbox" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update" />
        <br />
        <br />
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
           </center>
                    	</div>
 
        <!--End Update Box -->





    </form>

       
				<!-- Test Box -->
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2>Search Flights</h2>
					</div>
					<!-- End Box Head -->
					
					<form action="" method="post">
						
						<!-- Form -->
						<div class="form">
								<p>
									<span class="req">max 100 symbols</span>
									<label>Article Title <span>(Required Field)</span></label>
									<input type="text" class="field size1" />
								</p>	
								<p class="inline-field">
									<label>Date</label>
									<select class="field size2">
										<option value="">23</option>
									</select>
									<select class="field size3">
										<option value="">July</option>
									</select>
									<select class="field size3">
										<option value="">2009</option>
									</select>
								</p>
								
								<p>
									<span class="req">max 100 symbols</span>
									<label>Content <span>(Required Field)</span></label>
									<textarea class="field size1" rows="10" cols="30"></textarea>
								</p>	
							
						</div>
						<!-- End Form -->
						
						<!-- Form Buttons -->
						<div class="buttons">
							<input type="button" class="button" value="preview" />
							<input type="submit" class="button" value="submit" />
						</div>
						<!-- End Form Buttons -->
					</form>
				</div>

				<!-- End Test Box -->

            			</div>
			<!-- End Content -->
	


            			<div class="cl">&nbsp;</div>			
		</div>
		<!-- Main -->
        	</div>
</div>
  
    <!-- End Container -->
</body>
</html>
