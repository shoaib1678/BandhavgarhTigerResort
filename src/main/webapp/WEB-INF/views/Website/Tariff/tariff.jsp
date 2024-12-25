<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.shoaib.modal.Tariff"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<jsp:include page="../css.jsp" />
<title>Tariff - Hotel & Resort Booking</title>
</head>

<body>
<%
List<Tariff> tariff = (List<Tariff>)request.getAttribute("tariff");
int sno =0;
String ds ="";
String db ="";
String ls ="";
String lb ="";
String fr ="";
String sdate="";
String edate="";
if(tariff != null && !tariff.isEmpty()){
	SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd"); // Assuming the input is in this format
    SimpleDateFormat outputFormat = new SimpleDateFormat("dd MMMM yyyy"); 
    try {
        Date startDate = inputFormat.parse(tariff.get(0).getStart_date());
        Date endDate = inputFormat.parse(tariff.get(0).getEnd_date());
        sdate = outputFormat.format(startDate);
        edate = outputFormat.format(endDate);
    } catch (Exception e) {
        e.printStackTrace(); // Handle parse exceptions
    }
	ds = tariff.get(0).getDelux_single();
	db = tariff.get(0).getDelux_double();
	ls = tariff.get(0).getLuxury_single();
	lb = tariff.get(0).getLuxury_double();
	fr = tariff.get(0).getFamily_room();
	sno = tariff.get(0).getSno();
}
%>
	<jsp:include page="../header.jsp" />
	<!-- End Ecorik Navbar Area -->

	<!-- Start Page Title Area -->
	<div class="page-title-area"
		style="background-image: url(assets/img/banimage.webp);">
		<div class="container">
			<div class="page-title-content">
				<h2>Tariff</h2>
				<ul>
					<li><a href="./"> Home </a></li>
					<li>Tariff</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Page Title Area -->

	<section class="service-details-area pt-100">
		<div class="container">
			<div class="section-title">
				<span>Tariff</span>
				<h3>(Valid From <%=sdate %> Till <%=edate %>)</h3>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="service-details-wrap ">
						<div class="row">
							<div class="col-lg-4">
								<h5>Deluxe Room :</h5>
								<ul class="services-list">
									<li><i class='bx bx-check'></i> Single Room INR <%=ds %>/-</li>
									<li><i class='bx bx-check'></i> Double Room INR <%=db %>/-</li>
								</ul>
							</div>
							<div class="col-lg-4">
								<h5>Luxury Room :</h5>
								<ul class="services-list">
									<li><i class='bx bx-check'></i> Single Room - INR <%=ls %>/-</li>
									<li><i class='bx bx-check'></i> Double Room - INR <%=lb %>/-</li>
								</ul>
							</div>
							<div class="col-lg-4">
								<h5>Family Room :</h5>
								<ul class="services-list">
									<li><i class='bx bx-check'></i> Four pax in a room - INR
										<%=fr %>/-</li>
								</ul>
							</div>
							<div class="col-lg-12">
								<h6 class="mt-4">These Rates Are On American Plan, i.e,
									Accommodation & 1 Cycle Of Meals ( 1 Breakfast, 1 Lunch & 1
									Dinner, 2 Service Of Tea And Coffee). Taxes Extra as
									Applicable.</h6>
							</div>
							<div class="col-lg-12">
								<h5 class="mt-4">Note :</h5>
								<ul class="services-list">
									<li><i class='bx bx-check'></i> GST Taxes Extra</li>
									<li><i class='bx bx-check'></i> Park (Core Zone) remains
										closed on every Wednesday Evening.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../footer.jsp" />
	<jsp:include page="../js.jsp" />


</body>

</html>