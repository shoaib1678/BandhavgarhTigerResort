<%@page import="com.shoaib.modal.Gallery"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <jsp:include page="../css.jsp" />
    <title>Gallery - Hotel & Resort Booking</title>
     <style>
        .gallery-container {
            overflow: hidden;
            position: relative;
        }

        .gallery-img {
            height: 200px;
            object-fit: cover;
            transition: transform 0.3s ease-in-out;
            cursor: pointer;
            width: 100%;
        }

        .gallery-container:hover .gallery-img {
        overflow: hidden;
            transform: scale(1.1);
        }
    </style>
</head>

<body>
<%
List<Gallery> gallery =(List<Gallery>)request.getAttribute("gallery");
%>
    <jsp:include page="../header.jsp" />
<!-- End Ecorik Navbar Area -->

		<!-- Start Page Title Area -->
		<div class="page-title-area" style="background-image: url(assets/img/banimage.webp);">
			<div class="container">
				<div class="page-title-content">
					<h2>Gallery</h2>
					<ul>
						<li>
							<a href="./">
								Home 
							</a>
						</li>
						<li>gallery</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Page Title Area -->
    <section class="py-5">
        <div class="container">
            <div class="row g-4">
                <!-- Gallery Item 1 -->
                <%if(gallery != null && !gallery.isEmpty()){ 
                for(Gallery g : gallery){%>
                <div class="col-6 col-md-3 gallery-container">
                    <img src="displayimage?url=<%=g.getImage() %>" alt="Gallery Image 1" 
                         class="gallery-img" data-bs-toggle="modal" data-bs-target="#imageModal" 
                         data-bs-image="displayimage?url=<%=g.getImage() %>">
                </div>
                <%}}else{ %>
                <h5 style="color: red;">No Gallery Found</h5>
                <%}%>
            </div>
        </div>
    </section>

    <!-- Modal for Maximize -->
    <div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-body p-0">
                    <img src="" alt="Maximized Image" class="w-100" id="modalImage">
                </div>
                <button type="button" class="btn-close position-absolute top-0 end-0 m-3" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
        </div>
    </div>
   

   
<jsp:include page="../footer.jsp" />
<jsp:include page="../js.jsp" />
 <script>
        // Script to update modal image
        const imageModal = document.getElementById('imageModal');
        const modalImage = document.getElementById('modalImage');

        imageModal.addEventListener('show.bs.modal', function (event) {
            const triggerImage = event.relatedTarget;
            const imageUrl = triggerImage.getAttribute('data-bs-image');
            modalImage.src = imageUrl;
        });
    </script>
   
</body>

</html>