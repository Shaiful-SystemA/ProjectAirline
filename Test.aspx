<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="ProjectAirline.Test" MaintainScrollPositionOnPostback="true" %>

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
            .auto-style3 {
                height: 16px;
                width: 162px;
                text-align: left;
            }
            .auto-style4 {
                width: 167px;
                text-align: left;
            }
            .auto-style5 {
                height: 16px;
                width: 167px;
                text-align: left;
                font-size: small;
            }
            .auto-style7 {
                height: 14px;
            }
            .auto-style9 {
                height: 14px;
                width: 167px;
                text-align: left;
            }
            .auto-style17 {
                width: 191px;
            }
            .auto-style18 {
                width: 175px;
            }
            .auto-style19 {
                width: 191px;
                height: 16px;
            }
            .auto-style21 {
                width: 175px;
                height: 16px;
            }
            .auto-style22 {
                width: 191px;
                height: 32px;
            }
            .auto-style24 {
                width: 175px;
                height: 32px;
            }
            .auto-style25 {
                height: 32px;
            }
            .auto-style26 {
                width: 147px;
            }
            .auto-style27 {
                width: 147px;
                height: 16px;
                font-size: small;
                font-weight: bold;
            }
            .auto-style28 {
                width: 147px;
                height: 32px;
            }
            .auto-style30 {
                width: 174px;
                text-align: left;
            }
            .auto-style31 {
                width: 151px;
            }
            .auto-style32 {
                width: 168px;
                text-align: left;
            }
            .auto-style33 {
                width: 151px;
                height: 22px;
            }
            .auto-style34 {
                width: 161px;
                text-align: left;
                height: 22px;
                font-size: small;
            }
            .auto-style35 {
                width: 174px;
                text-align: left;
                height: 22px;
            }
            .auto-style36 {
                width: 168px;
                text-align: left;
                height: 22px;
            }
            .auto-style37 {
                width: 151px;
                height: 20px;
            }
            .auto-style38 {
                width: 161px;
                text-align: left;
                height: 20px;
                font-size: small;
            }
            .auto-style39 {
                width: 174px;
                text-align: left;
                height: 20px;
            }
            .auto-style40 {
                width: 168px;
                text-align: left;
                height: 20px;
            }
            .auto-style41 {
                width: 151px;
                height: 41px;
            }
            .auto-style42 {
                width: 161px;
                text-align: left;
                height: 41px;
            }
            .auto-style43 {
                width: 174px;
                text-align: left;
                height: 41px;
            }
            .auto-style44 {
                width: 168px;
                text-align: left;
                height: 41px;
            }

                 .GvGrid:hover
        {
            background-color: #FFEB9C;
            border-top: solid;
            color:#9C6500;
        }
    
            .auto-style45 {
                height: 23px;
            }
            .auto-style46 {
                height: 23px;
                width: 162px;
                text-align: left;
                font-size: small;
            }
            .auto-style47 {
                height: 23px;
                width: 167px;
                text-align: left;
            }
            .auto-style49 {
                height: 33px;
                width: 162px;
                text-align: left;
            }
            .auto-style50 {
                height: 33px;
                width: 167px;
                text-align: left;
            }
            .auto-style51 {
                height: 33px;
                text-align: left;
            }
    
            .auto-style52 {
                font-size: small;
            }
    
            .auto-style53 {
                width: 147px;
                font-size: small;
                font-weight: bold;
            }
    
            .auto-style54 {
                width: 161px;
                text-align: left;
                font-size: small;
            }
    
            .auto-style57 {
                height: 14px;
                width: 163px;
            }
            .auto-style58 {
                height: 23px;
                width: 163px;
            }
            .auto-style59 {
                height: 33px;
                width: 163px;
                text-align: left;
            }
            .auto-style60 {
                width: 163px;
                text-align: left;
            }
            .auto-style61 {
                width: 163px;
                height: 16px;
            }
    
            .auto-style62 {
                width: 167px;
                text-align: left;
                font-size: small;
            }
            .auto-style63 {
                width: 163px;
                text-align: left;
                height: 12px;
            }
            .auto-style67 {
                width: 162px;
                text-align: left;
            }
    
            .auto-style68 {
                width: 162px;
                text-align: left;
                height: 12px;
                font-size: small;
            }
            .auto-style69 {
                height: 12px;
                width: 167px;
                text-align: left;
            }
            .auto-style70 {
                height: 12px;
                text-align: left;
            }
            .auto-style71 {
                width: 162px;
                text-align: left;
                font-size: small;
            }
            .auto-style72 {
                width: 162px;
                text-align: left;
                height: 14px;
                font-size: small;
            }
    
        </style>

</head>
    
<script type = "text/javascript">
    window.onload = function () {
        var scrollY = parseInt('<%=Request.Form["scrollY"] %>');
        if (!isNaN(scrollY)) {
            window.scrollTo(0, scrollY);
        }
    };
    window.onscroll = function () {
        var scrollY = document.body.scrollTop;
        if (scrollY == 0) {
            if (window.pageYOffset) {
                scrollY = window.pageYOffset;
            }
            else {
                scrollY = (document.body.parentElement) ? document.body.parentElement.scrollTop : 0;
            }
        }
        if (scrollY > 0) {
            var input = document.getElementById("scrollY");
            if (input == null) {
                input = document.createElement("input");
                input.setAttribute("type", "hidden");
                input.setAttribute("id", "scrollY");
                input.setAttribute("name", "scrollY");
                document.forms[0].appendChild(input);
            }
            input.value = scrollY;
        }
    };

    function HideLabel() {
        var seconds = 5;
        setTimeout(function () {
            document.getElementById("<%=NewFlight.ClientID %>").style.display = "none";
        }, seconds * 1000);
    };
</script>



<body>

    <!-- Header -->
<div id="header">
	<div class="shell">
		<!-- Logo + Top Nav -->
		<div id="top">
			<h1><a href="#">Wiki Airlines</a> Adminstration</h1>
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
                        <table dir="ltr" style="width:100%;">
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style67">
                                    <strong style="font-size: small">Flight Number</strong></td>
                                <td class="auto-style62" style="text-align: left">
                        <asp:TextBox ID="FlightNumber1TextBox" runat="server" class="field size3" Width="64px"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style61">&nbsp;</td>
                                <td class="auto-style3">
                                    <strong style="font-size: small">From City</strong></td>
                                <td class="auto-style5">
                                    <asp:DropDownList ID="FromCity1DropDown" runat="server" class="field size3">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Singapore</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Shanghai</asp:ListItem>
                                        <asp:ListItem>Bangkok</asp:ListItem>
                                        <asp:ListItem>Taipei</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style1"></td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style71">
                                    <strong>To City</strong></td>
                                <td class="auto-style4">
                                    <asp:DropDownList ID="ToCity1DropDown" runat="server" class="field size3">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Singapore</asp:ListItem>
                                        <asp:ListItem>Shanghai</asp:ListItem>
                                        <asp:ListItem>Taipei</asp:ListItem>
                                        <asp:ListItem>Bangkok</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style63"></td>
                                <td class="auto-style68">
                                    <strong>Date of Departure</strong></td>
                                <td class="auto-style69">
                                    <asp:TextBox ID="DateOfDeparture1Textbox" runat="server" Width="106px" class="field size3"></asp:TextBox>
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="16px" ImageUrl="~/css/images/calendaralt.png" OnClick="ImageButton3_Click" Width="27px" />
                                </td>
                                <td class="auto-style70">
                                    <asp:Calendar ID="Calendar3" runat="server" OnSelectionChanged="Calendar3_SelectionChanged1" Visible="False" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style60">
                                    &nbsp;</td>
                                <td class="auto-style71">
                                    <strong>Departure Time</strong></td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="DepartureTime1TextBox" runat="server" class="field size3" Width="88px"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="DepartureTime1TextBox" ErrorMessage="Invalid Time" ForeColor="#FF3300" style="text-align: left" ValidationExpression="^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style60">&nbsp;</td>
                                <td class="auto-style71">
                                    <strong>Arrival Time</strong></td>
                                <td class="auto-style4">
                                    <asp:TextBox ID="ArrivalTime1Texbox" runat="server" class="field size3" Width="88px"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ArrivalTime1Texbox" ErrorMessage="Invalid TIme" ForeColor="Red" ValidationExpression="^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style57"></td>
                                <td class="auto-style72">
                                    <strong>Seats</strong></td>
                                <td class="auto-style9">
                                    <asp:TextBox ID="Seats1TextBox" runat="server" class="field size3" Width="48px"></asp:TextBox>
                                </td>
                                <td class="auto-style7">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style57">&nbsp;</td>
                                <td class="auto-style72">
                                    <strong>Status</strong></td>
                                <td class="auto-style9">
                                    <asp:DropDownList ID="StatusDropdown1" runat="server" class="field size3">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Available</asp:ListItem>
                                        <asp:ListItem>Not Available</asp:ListItem>
                                        <asp:ListItem>Delay</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style7">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style58"></td>
                                <td class="auto-style46">
                                    <strong>Price(SGD)</strong></td>
                                <td class="auto-style47">
                                    <asp:TextBox ID="Price1TextBox" runat="server" class="field size3" Width="48px"></asp:TextBox>
                                </td>
                                <td class="auto-style45">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style49">
                                    &nbsp;</td>
                                <td class="auto-style50">
                                    <asp:Button ID="BtnCreateFlight1" runat="server" OnClick="BtnCreateFlight1_Click" Text="Submit" CssClass="button"  />
                                </td>
                                <td class="auto-style51">
                                    <asp:Label ID="NewFlight" runat="server" Text="Form has been submitted successfully." Visible="false" ></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style49">
                                    &nbsp;</td>
                                <td class="auto-style50">
                                    <asp:Button ID="CreateClear" runat="server" CssClass="button" OnClick="CreateClear_Click" Text="Clear All" Width="71px" />
                                </td>
                                <td class="auto-style51">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style59">&nbsp;</td>
                                <td class="auto-style49">
                                    &nbsp;</td>
                                <td class="auto-style50">
                                    <asp:Label ID="ForInputError" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style51">&nbsp;</td>
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

                        <br />
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style54" style="text-align: left"><strong>Flight Number </strong></td>
                                <td class="auto-style30" style="text-align: left">
        <asp:TextBox ID="TextBox1" runat="server" Width="64px" class="field size3"></asp:TextBox>
                                </td>
                                <td class="auto-style32">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style54"><strong>From City </strong></td>
                                <td class="auto-style30">
                                    <asp:DropDownList ID="FromCityDropDown" runat="server" Width="117px" class="field size3">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Shanghai</asp:ListItem>
                                        <asp:ListItem>Bangkok</asp:ListItem>
                                        <asp:ListItem>Taipei</asp:ListItem>
                                        <asp:ListItem>Singapore</asp:ListItem>
                                        <asp:ListItem>Cochin</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Bangalore</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style32" style="text-align: left">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style54"><strong>To City </strong></td>
                                <td class="auto-style30">
                                    <asp:DropDownList ID="SearchToCityDropDown" runat="server" Width="116px" class="field size3">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Bangkok</asp:ListItem>
                                        <asp:ListItem>Taipei</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Singapore</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style32">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style54"><strong>Date of Departure </strong></td>
                                <td class="auto-style30"> <asp:TextBox ID="TextBox2" runat="server" Width="115px" class="field size3"></asp:TextBox>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" ImageUrl="~/css/images/calendaralt.png" OnClick="ImageButton1_Click" Width="29px" />
                                </td>
                                <td class="auto-style32">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="220px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style54"><strong>Departure Time </strong></td>
                                <td class="auto-style30">
        <asp:TextBox ID="TextBox3" runat="server" placeholder="00:00" class="field size3" Width="88px"></asp:TextBox>
                                </td>
                                <td class="auto-style32">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style54"><strong>Arrival Time </strong></td>
                                <td class="auto-style30">
                        <asp:TextBox ID="TextBox6" runat="server" placeholder="00:00" class="field size3" Width="88px"></asp:TextBox>
                                </td>
                                <td class="auto-style32">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style31">&nbsp;</td>
                                <td class="auto-style54"><strong>Seats </strong></td>
                                <td class="auto-style30">
                        <asp:TextBox ID="TextBox7" runat="server" class="field size3" Width="46px"></asp:TextBox>
                                </td>
                                <td class="auto-style32">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style33"></td>
                                <td class="auto-style34"><strong>Status</strong> </td>
                                <td class="auto-style35">
                                    <asp:DropDownList ID="SearchStatusDropdown" runat="server" Width="118px" class="field size3">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Available</asp:ListItem>
                                        <asp:ListItem>Not Available</asp:ListItem>
                                        <asp:ListItem>Delay</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style36">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style37"></td>
                                <td class="auto-style38"><strong>Price (SGD)</strong> </td>
                                <td class="auto-style39">
                                    <asp:TextBox ID="TextBox8" runat="server" Width="44px" class="field size3"></asp:TextBox>
                                </td>
                                <td class="auto-style40"></td>
                            </tr>
                            <tr>
                                <td class="auto-style41"></td>
                                <td class="auto-style42"></td>
                                <td class="auto-style43">
        <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" CssClass="button" />
                                </td>
                                <td class="auto-style44"></td>
                            </tr>
                        </table>
                        <br />
                        <br />
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
 
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" style="text-align:center" pagesize="15" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" Width="697px" RowStyle-CssClass="GvGrid" >
              <Columns>
                      <asp:TemplateField HeaderText="  Index    ">   
         <ItemTemplate>
                 <%# Container.DataItemIndex + 1 %>   
         </ItemTemplate>
     </asp:TemplateField>
                 <asp:BoundField DataField="FlightNo" HeaderText=" Flight No " />
                <asp:BoundField DataField="FromCity" HeaderText=" From City " />
                <asp:BoundField DataField="ToCity" HeaderText=" To City " />
                <asp:BoundField DataField="DateofDeparture" HeaderText="Departure Date" HtmlEncode="False" DataFormatString = "{0:d}"/>
                <asp:BoundField DataField="DepartureTime" HeaderText="DepartureTime" HtmlEncode="False" DataFormatString = "{0:hh\:mm}"/>
                 <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime"  HtmlEncode="False" DataFormatString = "{0:hh\:mm}"/>
                  <asp:BoundField DataField="Seats" HeaderText="Seats" />
                   <asp:BoundField DataField="Status" HeaderText="Status" />
                   <asp:BoundField DataField="price" HeaderText="Price" />

                  <asp:CommandField ButtonType="Button" SelectText="Update" ShowSelectButton="True">
                      <ControlStyle CssClass="button" />
                  <ItemStyle ForeColor="#993366" />
                  </asp:CommandField>
            </Columns>
              <RowStyle CssClass="GvGrid" />
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
			        <center>
        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style53">Flight Number </td>
                            <td class="auto-style18">
        <asp:TextBox ID="FlightNOTextbox" runat="server" class="field size3" Width="64px"></asp:TextBox>
                            </td>
                            <td>
        <asp:TextBox ID="ToTextbox" runat="server" class="field size3"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19"></td>
                            <td class="auto-style27">From City </td>
                            <td class="auto-style21">
                                <asp:DropDownList ID="UpdateFromCity" runat="server" class="field size3" Width="115px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Shanghai</asp:ListItem>
                                    <asp:ListItem>Bangkok</asp:ListItem>
                                    <asp:ListItem>Taipei</asp:ListItem>
                                    <asp:ListItem>Singapore</asp:ListItem>
                                    <asp:ListItem>Cochin</asp:ListItem>
                                    <asp:ListItem>Delhi</asp:ListItem>
                                    <asp:ListItem>Bangalore </asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style1">
        <asp:TextBox ID="FromTextbox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style53">To City </td>
                            <td class="auto-style18">
                                <asp:DropDownList ID="UpdateToCityDropDown" runat="server" class="field size3" Width="115px">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Bangkok</asp:ListItem>
                                    <asp:ListItem>Taipei</asp:ListItem>
                                    <asp:ListItem>Delhi</asp:ListItem>
                                    <asp:ListItem>Singapore</asp:ListItem>
                                    <asp:ListItem>Cochin</asp:ListItem>
                                    <asp:ListItem>Shanghai</asp:ListItem>
                                    <asp:ListItem>Bangalore</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style53">Date Of Departure </td>
                            <td class="auto-style18">
        <asp:TextBox ID="DepartureDateTextbox" runat="server" Width="115px" class="field size3"></asp:TextBox>
                                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="16px" ImageUrl="~/css/images/calendaralt.png" OnClick="ImageButton2_Click" Width="27px" />
                            </td>
                            <td>
                                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" Visible="False" Width="220px">
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                </asp:Calendar>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style53">Departure Time </td>
                            <td class="auto-style18">
        <asp:TextBox ID="DepartureTimeTextbox" runat="server" class="field size3" Width="87px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style53">Arrival Time </td>
                            <td class="auto-style18">
        <asp:TextBox ID="ArrivalTimeTextbox" runat="server" class="field size3" Width="87px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style53">Seats </td>
                            <td class="auto-style18">
        <asp:TextBox ID="SeatTextbox" runat="server" Width="45px" class="field size3"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style53">Status </td>
                            <td class="auto-style18">
                                <asp:DropDownList ID="UpdateStatusDrop" runat="server" class="field size3">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Available</asp:ListItem>
                                    <asp:ListItem>Not Available</asp:ListItem>
                                    <asp:ListItem>Delay</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style52"><strong>Price </strong></td>
                            <td class="auto-style18">
        <asp:TextBox ID="PriceTextbox" runat="server" class="field size3" Width="45px"></asp:TextBox>
                            </td>
                            <td>
        <asp:TextBox ID="StatusTextbox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style26">&nbsp;</td>
                            <td class="auto-style18">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style22"></td>
                            <td class="auto-style28"></td>
                            <td class="auto-style24">

                                <asp:Button ID="UpdateDelete" runat="server" OnClick="UpdateDelete_Click" Text="Delete  " OnClientClick="if ( !confirm('Are you sure you want to delete ? ')) return false;" CssClass="button" Width="69px"  />

                            </td>
                            <td class="auto-style25"></td>
                        </tr>
                        <tr>
                            <td class="auto-style22"></td>
                            <td class="auto-style28"></td>
                            <td class="auto-style24">
        <asp:Button ID="Update" runat="server" OnClick="Update_Click" Text="Update" CssClass="button"  />
                            </td>
                            <td class="auto-style25">
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                    <center>
                        <center>
                            <center>
                                <center>
                                    <center>
                                        <center>
        <br />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
           </center>
           </center>
           </center>
           </center>
           </center>
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
