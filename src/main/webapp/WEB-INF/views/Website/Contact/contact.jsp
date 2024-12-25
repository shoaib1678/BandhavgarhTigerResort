<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<jsp:include page="../css.jsp" />
<title>Contact - Hotel & Resort Booking</title>
</head>

<body>
	<jsp:include page="../header.jsp" />
	<!-- End Ecorik Navbar Area -->

	<!-- Start Page Title Area -->
	<div class="page-title-area"
		style="background-image: url(assets/img/banimage.webp);">
		<div class="container">
			<div class="page-title-content">
				<h2>Contact</h2>
				<ul>
					<li><a href="./"> Home </a></li>
					<li>contact</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Page Title Area -->
	<!-- Start Contact Area -->
	<section
		class="main-contact-area contact-info-area contact-info-three pt-100 pb-70">
		<div class="container">
			<div class="section-title">
				<span>Contact Us</span>
				<h2>BANDHAVGARH TIGER RESORT</h2>
				<!-- <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
					Eaque quibusdam deleniti porro praesentium. Aliquam minus quisquam
					velit in at nam.</p> -->
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="contact-wrap contact-pages">
						<div class="contact-form contact-form-mb">
							<form id="contactForm" name="contactForm">
								<div class="row">
									<h3 style="padding: 15px 15px;">Reservation Form</h3>
									<div class="col-lg-12 col-sm-6">
										<div class="form-group">
											<input type="text" name="name" id="name" class="form-control"
												placeholder="Your Name">
											<div class="help-block with-errors"></div>
										</div>
									</div>

									<div class="col-lg-6 col-sm-6">
										<div class="form-group">
											<input type="email" name="email" id="email"
												class="form-control"
												placeholder="Your Email">
											<div class="help-block with-errors"></div>
										</div>
									</div>

									<div class="col-lg-6 col-sm-6">
										<div class="form-group">
											<input type="text" name="phone_number" id="phone_number"
												class="form-control" placeholder="Your Phone">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-lg-12 col-sm-6">
										<div class="form-group">
											<input type="text" name="address" id="address"
												class="form-control" placeholder="Your address">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-lg-12 col-sm-6">
										<div class="form-group">
											<input type="text" name="country" id="country"
												class="form-control" placeholder="Your country">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<h3 style="padding: 15px 15px;">Details of Journey</h3>
									<div class="col-lg-12 col-sm-6">
										<div class="form-group">
											<input type="text" name="dateoftour" id="dateoftour"
												class="form-control" placeholder="Approximate Date of Tour">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-lg-6 col-sm-6 mb-4">
										<div class="form-group">
											<select name="adults" id="adults"
												class="form-control">
													<option selected disabled>Number of Adult</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">1</option>
													<option value="4">1</option>
													<option value=">5">>5</option>
												</select>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-lg-6 col-sm-6 mb-4">
										<div class="form-group">
											<select name="kids" id="kids"
												class="form-control">
													<option selected disabled>Number of Kids</option>
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">1</option>
													<option value="4">1</option>
													<option value=">5">>5</option>
												</select>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-lg-6 col-sm-6">
										<div class="form-group">
											<input type="text" name="tour_duration" id="tour_duration"
												class="form-control" placeholder="Duration of Tour">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-lg-6 col-sm-6">
										<div class="form-group">
											<input type="text" name="vehicle_booked" id="vehicle_booked"
												class="form-control" placeholder="Vehicle to be booked">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12">
										<div class="form-group">
											<textarea name="details" class="form-control textarea-hight"
												id="details" cols="30" rows="4" 
												 placeholder="Details of services Required"></textarea>
											<div class="help-block with-errors"></div>
										</div>
									</div>

									<div class="col-lg-12 col-md-12">
										<button type="submit" class="default-btn btn-two">
											Send Message <i class="flaticon-right"></i>
										</button>
										<div id="msgSubmit" class="h3 text-center hidden"></div>
										<div class="clearfix"></div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-sm-6">
					<div class="row">
						<div class="col-lg-6 col-sm-6">
							<div class="single-contact-info" id="eml" style="cursor: pointer;">
								<i class="bx bx-envelope"></i>
								<h3>Email Us:</h3>
								<a
									href="mailto:resortbtr@gmail.com"><span
									class="__cf_email__"
									data-cfemail="1f777a7373705f7a7c706d7674317c7072">resortbtr@gmail.com</span></a>
							</div>
						</div>
						<div class="col-lg-6 col-sm-6">
							<div class="single-contact-info" id="call" style="cursor: pointer;">
								<i class="bx bx-phone-call"></i>
								<h3>Call Us:</h3>
								<a href="tel:+919343311846">Tel. +91-9343311846</a>
							</div>
						</div>
						<div class="col-lg-12 col-sm-6">
							<div class="single-contact-info">
								<i class="bx bx-location-plus"></i>
								<h3>India</h3>
								<a>Behind SUB-THANA, BANDHAVGARH, Tala, Madhya Pradesh 484661</a>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-sm-6">
						<div class="single-contact-info">
							<div class="map-area">
								<iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d116877.09619289148!2d80.94165431796837!3d23.73278106866353!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3986a5002406f375%3A0x1ec99a2e71bee01d!2sBandhavgarh%20Tiger%20Resort%2C%20behind%20SUB-THANA%2C%20BANDHAVGARH%2C%20Tala%2C%20Madhya%20Pradesh%20484661!3m2!1d23.7328029!2d81.0240559!5e0!3m2!1sen!2sin!4v1733078751710!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Contact Area -->

	<!-- Start Map Area -->

	<!-- End Map Area -->


	<jsp:include page="../footer.jsp" />
	<jsp:include page="../js.jsp" />
	
	<script>
	$(document).ready(function () {
	    const phoneNumber = "+919343311846";
	    const emailAddress = "resortbtr@gmail.com";

	    $("#call").on("click", function () {
	        window.location.href = `tel:${phoneNumber}`;
	    });

	    $("#eml").on("click", function () {
	        window.location.href = `mailto:${emailAddress}`;
	    });
	});
	
	$(function() {
	      $("form[name='contactForm']").validate({
	          rules: {
	              name: { required: true },
	              phone_number: { required: true },
	              email: { required: true },
	              address: { required: true },
	              country: { required: true },
	              dateoftour: { required: true },
	              adults: { required: true },
	              kids: { required: true },
	              tour_duration: { required: true },
	              vehicle_booked: { required: true },
	              details: { required: true }
	          },
	          messages: {
	              name: { required: "Please enter your name" },
	              phone_number: { required: "Please enter your phone number" },
	              email: { required: "Please enter yor email" },
	              address: { required: "Please enter your address" },
	              country: { required: "Please enter country" },
	              dateoftour: { required: "Please enter approximation date of tour" },
	              adults: { required: "Please select no of adults" },
	              kids: { required: "Please select no of kids" },
	              tour_duration: { required: "Please duration of tour" },
	              vehicle_booked: { required: "Please enter vehicle to be booked" },
	              details: { required: "Please write a details of sevice" }
	          },
	          submitHandler: function(form) {
	              /* $("#sndbtn").attr("disabled", true);
	              $("#sndbtn").html("Please wait..."); */
	              var obj = {
	                  "name": $("#name").val(),
	                  "mobile_number": $("#phone_number").val(),
	                  "email": $("#email").val(),
	                  "address": $("#address").val(),
	                  "country": $("#country").val(),
	                  "dateof_tour": $("#dateoftour").val(),
	                  "adults": $("#adults").val(),
	                  "kids": $("#kids").val(),
	                  "duration": $("#tour_duration").val(),
	                  "vehicle_booked": $("#vehicle_booked").val(),
	                  "service_details": $("#details").val(),
	              };
	              
	              $.ajax({
	                  url: 'add_reservation',
	                  type: 'post',
	                  data: JSON.stringify(obj),
	                  dataType: 'json',
	                  contentType: 'application/json',
	                  success: function(data) {
	                      /* $("#sndbtn").attr("disabled", false);
	                      $("#sndbtn").html("Send Message"); */
	                      if (data['status'] == 'Success') {
	                          alert(data['message']);
	                          $('#contactForm').trigger("reset");
	                      } else {
	                          alert(data['message']);
	                      }
	                  },
	                  error: function() {
	                      $("#sndbtn").attr("disabled", false);
	                      $("#sndbtn").html("Send Message");
	                      alert("An error occurred. Please try again.");
	                  }
	              });
	          }
	      });
	  });
	</script>


</body>

</html>