<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<jsp:include page="../css.jsp" />
<title>Jungle Safari - Hotel & Resort Booking</title>
</head>

<body>
	<jsp:include page="../header.jsp" />
	<!-- End Ecorik Navbar Area -->

	<!-- Start Page Title Area -->
	<div class="page-title-area"
		style="background-image: url(assets/img/safariimg.webp);">
		<div class="container">
			<div class="page-title-content">
				<h2>Jungle Safari</h2>
				<ul>
					<li><a href="./"> Home </a></li>
					<li>Jungle Safari</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End Page Title Area -->
	<!-- Start Our Rooms Area -->
	<section class="our-rooms-area pb-100 pt-100">
		<div class="container">
			<div class="tab industries-list-tab">
				<div class="row">
					<div class="col-lg-8">
						<h3 class="mt-4">1. Morning & Afternoon Jeep Safari:</h3>
						<p>Explore the untamed beauty of Bandhavgarh at two distinct
							times of day. Join us for the morning safari, where the jungle
							awakens in golden hues, and experience the afternoon safari as
							the sun casts long shadows, creating a unique perspective.
							Discover the secrets of the wild with our knowledgeable guides
							leading the way.</p>
						<h3 class="mt-4">2. Full-Day Photography Safari:</h3>
						<p>Elevate your safari experience with our exclusive full-day
							photography safari. Immerse yourself in the art of capturing the
							jungle's essence from sunrise to sunset. Unleash your creativity
							as you frame the majestic residents of Bandhavgarh, ensuring you
							capture every mesmerizing moment in its natural splendor.</p>
						<h3 class="mt-4">Park (Core Zone) remains closed on every
							Wednesday Evening.</h3>
						<p class="mt-4">
							<b>Short Elephant Safari (Joy Ride )</b> is subject to
							availability by the forest department <b>{Presently suspended
								by forest department}</b>
						</p>
						<p class="mt-4"><b>Long Elephant Safari</b> can be arranged on prior
							booking with special permits but subject to availability by the
							forest department <b>{Presently suspended by forest department}</b></p>
						<div class="others-option">
                               <!-- <a href="tel:+919343311846" class="default-btn">
												9343311846
												<i class="bx bx-phone-call"></i>
											</a> -->
							  <a href="https://mpjungle.com/" class="default-btn">
												Book Exclusive Safari
												<i class="flaticon-right"></i>
											</a>
                            </div>
					</div>
					<div class="col-lg-4">
						<ul class="tabs">
							<li class="single-rooms"><img
								src="assets/img/rooms/button-img-1.jpg" alt="Image">
								<div class="room-content">
									<h3>Delux Room</h3>
									<span>2 Beds AC Rooms</span>
								</div></li>
							<li class="single-rooms"><img
								src="assets/img/rooms/button-img-2.jpg" alt="Image">
								<div class="room-content">
									<h3>Superior Room</h3>
									<span>2 Beds AC Rooms</span>
								</div></li>
							<li class="single-rooms"><img
								src="assets/img/rooms/button-img-3.jpg" alt="Image">
								<div class="room-content">
									<h3>Family Room</h3>
									<span>2 Beds AC Rooms</span>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Our Rooms Area -->
<!-- Start Slider Gallery Area -->
		<div class="slider-gallery-area">
			<div class="container-fluid p-0">
				<div class="slider-gallery-wrap owl-carousel owl-theme">
					<div class="single-slider-gallery">
						<img src="assets/img/g1.jpg" alt="Image">
						<div class="instagram-link">
							<a href="javascript:void(0)" target="_blank">
							</a>
						</div>
					</div>
					<div class="single-slider-gallery">
						<img src="assets/img/g2.jpg" alt="Image">
						<div class="instagram-link">
							<a href="javascript:void(0)" target="_blank">
							</a>
						</div>
					</div>
					<div class="single-slider-gallery">
						<img src="assets/img/g3.jpg" alt="Image">
						<div class="instagram-link">
							<a href="javascript:void(0)" target="_blank">
							</a>
						</div>
					</div>
					<div class="single-slider-gallery">
						<img src="assets/img/g4.jpg" alt="Image">
						<div class="instagram-link">
							<a href="javascript:void(0)" target="_blank">
							</a>
						</div>
					</div>
					<!-- <div class="single-slider-gallery">
						<img src="assets/img/gallery/5.jpg" alt="Image">
						<div class="instagram-link">
							<a href="javascript:void(0)" target="_blank">
							</a>
						</div>
					</div> -->
				</div>
			</div>
		</div>
		<!-- End Slider Gallery Area -->

	<jsp:include page="../footer.jsp" />
	<jsp:include page="../js.jsp" />


</body>

</html>