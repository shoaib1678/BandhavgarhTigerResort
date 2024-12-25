<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <jsp:include page="../css.jsp" />
    <title>Home - Hotel & Resort Booking</title>
    <style>
    	.modal-content {
    background-image: url('assets/img/tigimg.jpeg'); 
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
    color: #fff;
  }
  .modal-body input,
  .modal-body textarea {
    background-color: rgba(255, 255, 255, 0.2); /* Transparent white background */
    color: #fff; /* White text for visibility */
    border: 1px solid rgba(255, 255, 255, 0.5); /* Semi-transparent white border */
  }

  .modal-body input::placeholder,
  .modal-body textarea::placeholder {
    color: rgba(255, 255, 255, 0.7); /* Semi-transparent placeholder text */
  }

  .modal-body input:focus,
  .modal-body textarea:focus {
    background-color: rgba(255, 255, 255, 0.3); /* Slightly darker background on focus */
    outline: none;
    box-shadow: 0 0 5px rgba(255, 255, 255, 0.7); /* Subtle glow effect */
  }
    </style>
</head>

<body>
    <jsp:include page="../header.jsp" />

    <!-- Start Ecorik Slider Area -->
    <section class="eorik-slider-area">
        <div class="eorik-slider owl-carousel owl-theme">
            <div class="eorik-slider-item slider-item-bg-1">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="eorik-slider-text overflow-hidden one eorik-slider-text-one">
                                <h1>Discover Nature</h1>
                                <span>Discover the place where you have fun & enjoy a lot</span>
                                <div class="slider-btn">
                                    <a class="default-btn" href="contact">
											Book Now
											<i class="flaticon-right"></i>
										</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="eorik-slider-item slider-item-bg-2">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="eorik-slider-text overflow-hidden two eorik-slider-text-one">
                                <h1>Reconnect with Nature</h1>
                                <span>Rediscover peace, escape chaos, and reconnect deeply with nature's beauty.</span>
                                <div class="slider-btn">
                                    <a class="default-btn" href="contact">
											Book Now
											<i class="flaticon-right"></i>
										</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="eorik-slider-item slider-item-bg-3">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="eorik-slider-text overflow-hidden three eorik-slider-text-one">
                                <h1>Experience Nature</h1>
                                <span>Explore wilderness, embrace serenity, and feel nature's true essence.</span>
                                <div class="slider-btn">
                                    <a class="default-btn" href="contact">
											Book Now
											<i class="flaticon-right"></i>
										</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="white-shape">
            <img src="assets/img/home-one/slider/white-shape.png" alt="Image">
        </div>
        <div class="social-link">
            <ul>
                <li>
                    <a href="https://www.facebook.com/profile.php?id=61569300043582" target="_blank">
							<i class="bx bxl-facebook"></i>
						</a>
                </li>
                <li>
                    <a href="javascript:void(0)" target="_blank">
							<i class="bx bxl-instagram"></i>
						</a>
                </li>
                <!-- <li>
                    <a href="javascript:void(0)" target="_blank">
							<i class="bx bxl-linkedin"></i>
						</a>
                </li> -->
            </ul>
        </div>
    </section>
    <!-- End Ecorik Slider Area -->

     <!-- Start Check Area -->
   <!-- <div class="check-area mb-minus-70">
        <div class="container">
            <form class="check-form">
                <div class="row align-items-center">
                    <div class="col-lg-3 col-sm-6">
                        <div class="check-content">
                            <p>Arrival Date</p>
                            <div class="form-group">
                                <div class="input-group date" id="datetimepicker-1">
                                    <i class="flaticon-calendar"></i>
                                    <input type="text" class="form-control" placeholder="29/02/2024">
                                    <span class="input-group-addon">
											<i class="glyphicon glyphicon-th"></i>
										</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-sm-6">
                        <div class="check-content">
                            <p>Departure Date</p>
                            <div class="form-group">
                                <div class="input-group date" id="datetimepicker-2">
                                    <i class="flaticon-calendar"></i>
                                    <input type="text" class="form-control" placeholder="29/02/2024">
                                    <span class="input-group-addon">
											<i class="glyphicon glyphicon-th"></i>
										</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="row">
                            <div class="col-lg-6 col-sm-6">
                                <div class="check-content">
                                    <p>Adults</p>
                                    <div class="form-group">
                                        <select name="adult" class="form-content">
												<option value="1">01</option>
												<option value="2">02</option>
												<option value="3">03</option>
												<option value="4">04</option>
												<option value="5">05</option>
											</select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-6">
                                <div class="check-content">
                                    <p>Children</p>
                                    <div class="form-group">
                                        <select name="adult" class="form-content">
												<option value="1">01</option>
												<option value="2">02</option>
												<option value="3">03</option>
												<option value="4">04</option>
												<option value="5">05</option>
											</select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="check-btn check-content mb-0">
                            <button class="default-btn">
									Check Availability
									<i class="flaticon-right"></i>
								</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    End Check Section -->

    <!-- Start Explore Area -->
    <section class="explore-area pt-100 pb-100">
        <div class="container">
            <div class="section-title">
                <span>welcome to BTR</span>
                <h2>One of the finest Wildlife Resort in Bandhavgarh</h2>
            </div>
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="explore-img">
                        <img src="assets/img/BTR/IMG_20241117_095946.jpg" alt="Image">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="explore-content ml-30">
                        <h2>As much as comfort want to get from us everything</h2>
                        <p>Nestled across an expansive 2 acres, just 5 minutes from the main Tala Park gate, Bandhavgarh Tiger Resort invites you to experience unmatched tranquility. Discover comfort in our 20 air-conditioned Superior Rooms, each adorned with a personal verandah and balcony. Indulge in luxurious bathrooms and savor farm-fresh delights at our two distinct restaurants. Committed to environmental sensitivity, we seamlessly blend with the surrounding beauty. As one of the premier wildlife resorts in Bandhavgarh, managed by seasoned professionals, we uphold a steadfast dedication to conservation, local communities, and eco-friendly practices. Your connection with us is bound to be a lifetime affair.</p>

                       <!--  <p>Konin wansis dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut nim ad minim veniam, quis nostrud exercitation. dolor sit amet, consectetur adipisicing quis nostrud
                            exercitation Lorem ipsum dolor sit amet consectetur.</p>
                        <a href="about.html" class="default-btn">
								explore More
								<i class="flaticon-right"></i>
							</a> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Explore Area -->
    <!-- Start City View Area -->
    <section class="city-view-area ptb-100">
        <div class="container">
            <div class="city-wrap">
                <div class="single-city-item owl-carousel owl-theme">
                    <div class="city-view-single-item">
                        <div class="city-content">
                            <span>highlights</span>
                            <h3>Unveil the Wonders of Bandhavgarh – Where Nature Meets Adventure</h3>
                            <p>Bandhavgarh offers an unparalleled experience with its breathtaking landscapes, abundant wildlife, and thrilling safari opportunities. Explore the heart of nature, where every moment brings new excitement and discovery, making it the perfect destination for adventure seekers.</p>

                            <p>Whether you’re an avid wildlife photographer or simply seeking tranquility, Bandhavgarh ensures a memorable journey through its pristine wilderness.</p>
                        </div>
                    </div>
                    <div class="city-view-single-item">
                        <div class="city-content">
                            <span>highlights</span>
                            <h3>Bandhavgarh: A Haven for Wildlife Enthusiasts and Nature Lovers</h3>
                            <p>Bandhavgarh is a haven for wildlife enthusiasts, home to majestic tigers, diverse wildlife, and spectacular natural beauty. Experience the thrill of safaris and get up close with nature’s wonders in a truly untouched environment.</p>

                            <p>With its rich flora, fauna, and peaceful atmosphere, Bandhavgarh is the ultimate escape for those seeking adventure or a serene retreat.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End City View Area -->
 <!-- Start Our Rooms Area -->
		<section class="our-rooms-area ptb-100"> 
			<div class="container">
				<div class="section-title">
					<span>Our Rooms</span>
					<h2>Fascinating rooms & suites</h2>
				</div>
				<div class="row">
					<div class="col-lg-4 col-sm-6 mt-3">
						<div class="single-rooms-three-wrap">
							<div class="single-rooms-three">
								<img src="assets/img/BTR/delux.jpg" alt="Image" style="height: 100%; width: -webkit-fill-available;">
								<div class="single-rooms-three-content">
									<h3>Deluxe Room</h3>
									<ul class="rating">
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
									</ul>
									<a href="contact" class="default-btn">
										Book Now
										<i class="flaticon-right"></i>
									</a>
									<span class="information" data-toggle="tooltip" data-placement="top" title="Swimming doller dolor sit aet odu tur adiing elitse">
										<i class='bx bx-info-circle'></i>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 mt-3">
						<div class="single-rooms-three-wrap">
							<div class="single-rooms-three" >
								<img src="assets/img/BTR/luxury.jpg" alt="Image"style="height: 100%; width: -webkit-fill-available;">
								<div class="single-rooms-three-content">
									<h3>Superior Room</h3>
									<ul class="rating">
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
									</ul>
									<a href="contact" class="default-btn">
										Book Now
										<i class="flaticon-right"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-sm-6 mt-3">
						<div class="single-rooms-three-wrap">
							<div class="single-rooms-three">
								<img src="assets/img/family.webp" alt="Image"style="height: 100%; width: -webkit-fill-available;">
								<div class="single-rooms-three-content">
									<h3>Family Room</h3>
									<ul class="rating">
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
										<li>
											<i class="bx bxs-star"></i>
										</li>
									</ul>
									<a href="book-table.html" class="default-btn">
										Book Now
										<i class="flaticon-right"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Our Rooms Area -->
    <!-- End Facilities Area -->
    <section class="facilities-area pb-60">
        <div class="container">
            <div class="section-title">
                <span>Resort Facilities</span>
                <h2>Giving entirely awesome</h2>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-facilities-wrap">
                        <div class="single-facilities">
                            <i class="fa fa-wifi" style="color: #cc8c18; font-size: 35px;"></i>
                            <h3>Free Wifi Internet​</h3>
                            <p>Complimentary high-speed Wi-Fi, ensuring seamless browsing and connectivity throughout your stay.</p>
                            <a href="javascript:void(0)" class="icon-btn">
									<i class="flaticon-right"></i>
								</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-facilities-wrap">
                        <div class="single-facilities">
                            <i class="fa fa-shopping-bag" style="color: #cc8c18; font-size: 35px;"></i>
                            <h3>Nature Shop​</h3>
                            <p>Nature Shop with eco-friendly products, unique souvenirs, and essentials for outdoor adventures.</p>
                            <a href="javascript:void(0)" class="icon-btn">
									<i class="flaticon-right"></i>
								</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-facilities-wrap">
                        <div class="single-facilities">
                            <i class="fa fa-headphones" style="color: #cc8c18; font-size: 35px;"></i>
                            <h3>24/7 Reception​</h3>
                            <p>24/7 Reception offering friendly assistance, check-ins, and support at any time for your convenience.</p>
                            <a href="javascript:void(0)" class="icon-btn">
									<i class="flaticon-right"></i>
								</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-facilities-wrap">
                        <div class="single-facilities">
                            <i class="fa fa-cutlery" style="color: #cc8c18; font-size: 35px;"></i>
                            <h3>Own Restaurant</h3>
                            <p>On-site restaurant offering delicious local and international cuisine for a delightful dining experience.</p>
                            <a href="javascript:void(0)" class="icon-btn">
									<i class="flaticon-right"></i>
								</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-facilities-wrap">
                        <div class="single-facilities">
                            <i class="restaurants-icon flaticon-swimming" style="color: #cc8c18; font-size: 35px;"></i>
                            <h3>Swimming pool</h3>
                            <p>Swimming pool facility offering relaxation, exercise, and enjoyable swimming experiences throughout your stay.</p>
                            <a href="javascript:void(0)" class="icon-btn">
									<i class="flaticon-right"></i>
								</a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-3 col-sm-6">
                    <div class="single-facilities-wrap">
                        <div class="single-facilities">
                            <i class="fa-solid fa-spa" style="color: #cc8c18; font-size: 35px;"></i>
                            <h3>Spa</h3>
                            <p>Luxurious spa offering rejuvenating treatments and massages for ultimate relaxation and wellness.</p>
                            <a href="javascript:void(0)" class="icon-btn">
									<i class="flaticon-right"></i>
								</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-facilities-wrap">
                        <div class="single-facilities">
                            <i class="facilities-icon flaticon-pickup"></i>
                            <h3>Jungle Safari Desk​</h3>
                            <p>Embark on thrilling safari tours for unforgettable wildlife encounters and breathtaking jungle exploration.</p>
                            <a href="javascript:void(0)" class="icon-btn">
									<i class="flaticon-right"></i>
								</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Facilities Area -->

    <!-- End Incredible Area -->
    <section class="incredible-area ptb-140 jarallax">
        <div class="container">
            <div class="incredible-content">
                <a href="javascript:void(0)" class="video-btn popup-youtube">
						<i class="flaticon-play-button"></i>
					</a>
                <h2><span>Incredible!</span> Are you coming today</h2>
                <p>Join us for an exciting day of activities and exploration. Whether you're here for relaxation or adventure, we have something special planned just for you. Don’t miss out on an unforgettable experience!</p>
                <a href="contact" class="default-btn">
						Join Us Today
						<i class="flaticon-right"></i>
					</a>
            </div>
        </div>
        <div class="white-shape">
            <img src="assets/img/shape/white-shape-top.png" alt="Image">
            <img src="assets/img/shape/white-shape-bottom.png" alt="Image">
        </div>
    </section>
    <!-- End Incredible Area -->

   
    <!-- start Testimonials Area -->
    <section class="testimonials-area pb-100">
        <div class="container">
            <div class="section-title">
                <span>Testimonials</span>
                <h2>What customers say</h2>
            </div>
            <div class="testimonials-wrap owl-carousel owl-theme">
                <div class="single-testimonials">
                    <ul>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                    </ul>
                    <h3>Excellent Room</h3>
                    <p>“Awesome yksum dolor sit ametco elit, sed do eiusmod tempor incididunt et md do eiusmoeiusmod tempor inte emamnsecacing eiusmoeiusmod”</p>
                    <div class="testimonials-content">
                        <img src="assets/img/testimonials/2.jpg" alt="Image">
                        <h4>Ayman Jenis</h4>
                        <span>CEO@Leasuely</span>
                    </div>
                </div>
                <div class="single-testimonials">
                    <ul>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                    </ul>
                    <h3>Excellent hotel</h3>
                    <p>“Awesome yksum dolor sit ametco elit, sed do eiusmod tempor incididunt et md do eiusmoeiusmod tempor inte emamnsecacing eiusmoeiusmod”</p>
                    <div class="testimonials-content">
                        <img src="assets/img/testimonials/3.jpg" alt="Image">
                        <h4>Ayman Jenis</h4>
                        <span>CEO@Leasuely</span>
                    </div>
                </div>
                <div class="single-testimonials">
                    <ul>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                    </ul>
                    <h3>Excellent Swimming</h3>
                    <p>“Awesome yksum dolor sit ametco elit, sed do eiusmod tempor incididunt et md do eiusmoeiusmod tempor inte emamnsecacing eiusmoeiusmod”</p>
                    <div class="testimonials-content">
                        <img src="assets/img/testimonials/1.jpg" alt="Image">
                        <h4>Ayman Jenis</h4>
                        <span>CEO@Leasuely</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Testimonials Area -->
 <!-- Modal -->
    <div class="modal fade" id="enquiryModal" tabindex="-1" aria-labelledby="enquiryModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content ">
                <div class="modal-header" style="border-bottom: none;    padding: 0px 3px;">
                    <button type="button" class="btn-close text-white"  data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="enquiry_form" name="enquiry_form">
                    <h5 class="modal-title text-white text-center pb-3" id="enquiryModalLabel">Enquire now for an extraordinary<br> wildlife adventure</h5>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="mb-2">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                                </div>
                            </div>
                           <div class="col-md-12">
                                <div class="mb-2">
                                    <input type="email" class="form-control" name="email" id="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-2">
                                    <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Ccntact Number">
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <textarea class="form-control" id="message" name="message" rows="2" placeholder="Message"></textarea>
                        </div>
                        <button type="submit" class="btn btn-warning" id="sndbtn">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
   
<jsp:include page="../footer.jsp" />
<jsp:include page="../js.jsp" />
<script>
$(document).ready(function () {
	  setTimeout(function () {
	    $('#enquiryModal').modal('show');
	  }, 2000); // 2000 milliseconds = 2 seconds
	});
	
$(function() {
	$("form[name='enquiry_form']").validate(
			{
				rules : {
					name : {
						required : true,
					},
					email : {
						required : true,
					},
					phoneNumber : {
						required : true,
					},
					message : {
						required : true,
					},
				},

				messages : {
												
					name : {
						required : "Please enter  name",
					},														
					email : {
						required : "Please enter email."
					},
					phoneNumber : {
						required : "Please enter contact number."
					},
					message : {
						required : "Please write message here."
					},
					
					
				},

				submitHandler : function(form) {
					$("#sndbtn").attr("disabled",true);
					$("#sndbtn").html("Please wait...");
					var name = $("#name").val();
					var email = $("#email").val();
					var phoneNumber = $("#phoneNumber").val();
					var message = $("#message").val();
					 var obj = {
							 "name" : name,
							 "email" : email,
							"mobile_number" :phoneNumber,
							 "message" :message
					 };
					$.ajax({
						url : 'add_enquiry',
						type : 'post',
						data : JSON.stringify(obj),
						dataType : 'json',
						contentType :  'application/json',
						success : function(data) {

							if (data['status'] == 'Success') {
									alert(data['message']);
									 $('#enquiryModal').modal('hide');
							} else if(data['status'] == 'Already_Exist'){
								alert(data['message']);
							}
							else{
								alert(data['message']);
							}
						}
					});

				}
			});

});
</script>

   
</body>

</html>