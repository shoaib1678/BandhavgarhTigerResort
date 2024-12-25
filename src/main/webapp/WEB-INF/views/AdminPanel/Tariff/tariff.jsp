<!DOCTYPE html>
<%@page import="com.shoaib.modal.Tariff"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<jsp:include page="../css.jsp"></jsp:include>
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
	sdate = tariff.get(0).getStart_date();
	edate = tariff.get(0).getEnd_date();
	ds = tariff.get(0).getDelux_single();
	db = tariff.get(0).getDelux_double();
	ls = tariff.get(0).getLuxury_single();
	lb = tariff.get(0).getLuxury_double();
	fr = tariff.get(0).getFamily_room();
	sno = tariff.get(0).getSno();
}
%>
	<jsp:include page="../header.jsp"></jsp:include>
	<div id="wrapper">
		<div class="main-content">

			<div class="row small-spacing">
				<div class="col-lg-12 col-xs-12">
					<div class="box-content card white" style="padding-bottom: 20px;">
						<h4 class="box-title">Tariff Details</h4>
						<!-- /.box-title -->
						<div class="card-content">
							<form id="tariff_form" Name="tariff_form">
								<div class="modal-body">
									<div class="row">
										<div class="col-md-6">
											<div class="form-group">
												<label for="start_date">Start Date<span
													style="color: red;">*</span></label> <input type="date"
													class="form-control" id="start_date"
													name="start_date" placeholder="" value="<%=sdate%>">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="end_date">End Date<span
													style="color: red;">*</span></label> <input type="date"
													class="form-control" id="end_date"
													name="end_date" placeholder="" value="<%=edate%>">
											</div>
										</div>
										<hr>
										<h4>Delux Room</h4>
										<div class="col-md-6">
											<div class="form-group">
												<label for="delux_single">Single Room Price<span
													style="color: red;">*</span></label> <input type="text"
													class="form-control" id="delux_single"
													name="delux_single" placeholder="" value="<%=ds%>">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="delux_double">Double Room Price<span
													style="color: red;">*</span></label> <input type="text"
													class="form-control" id="delux_double"
													name="delux_double" placeholder="" value="<%=db%>">
											</div>
										</div>
										<hr>
										<h4>Luxury Room</h4>
										<div class="col-md-6">
											<div class="form-group">
												<label for="luxury_single">Single Room Price<span
													style="color: red;">*</span></label> <input type="text"
													class="form-control" id="luxury_single"
													name="luxury_single" placeholder="" value="<%=ls%>">
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label for="luxury_double">Double Room Price<span
													style="color: red;">*</span></label> <input type="text"
													class="form-control" id="luxury_double"
													name="luxury_double" placeholder="" value="<%=lb%>">
											</div>
										</div>
										<h4>Family Room</h4>
										<div class="col-md-6">
											<div class="form-group">
												<label for="family_room">Family Room Price<span
													style="color: red;">*</span></label> <input type="text"
													class="form-control" id="family_room"
													name="family_room" placeholder="" value="<%=fr%>">
											</div>
										</div>
									</div>
								</div>
								<input type="hidden" id="sno" value="<%=sno%>">
									<button type="submit"
										class="btn btn-primary btn-sm waves-effect waves-light"
										style="float: right;">Save</button>
							</form>
						</div>
						<!-- /.card-content -->
					</div>
					<!-- /.box-content -->
				</div>

			</div>
			<jsp:include page="../footer.jsp"></jsp:include>
		</div>
	</div>

	<jsp:include page="../js.jsp"></jsp:include>

	<script>
	
	$(function() {
		$("form[name='tariff_form']").validate(
				{
					rules : {
						
						/* start_date : {
							required : true,
						},
						start_date : {
							required : true,
						},
						delux_single : {
							required : true,
						},
						delux_double : {
							required : true,
						},
						luxury_single : {
							required : true,
						},
						luxury_double : {
							required : true,
						},
						family_room : {
							required : true,
						}, */
					},

					messages : {
													
						
						/* start_date : {
							required : "Please enter start date."
						},
						end_date : {
							required : "Please enter end date."
						},
						delux_single : {
							required : "Please enter delux single room price."
						},
						delux_double : {
							required : "Please delux double room price."
						},
						luxury_single : {
							required : "Please luxury single room price."
						},
						luxury_double : {
							required : "Please enter luxury double room price."
						},
						family_room : {
							required : "Please enter family room price."
						}, */
						
					},
					submitHandler : function(form) {
						var sno = $("#sno").val();
						var start_date = $("#start_date").val();
						var end_date = $("#end_date").val();
						var delux_single = $("#delux_single").val();
						var delux_double = $("#delux_double").val();
						var luxury_single = $("#luxury_single").val();
						var luxury_double = $("#luxury_double").val();
						var family_room = $("#family_room").val();
						
						 var obj = {
								 "sno" :sno,
								 "start_date" :start_date,
								 "end_date" :end_date,
								 "delux_single" :delux_single,
								 "delux_double" :delux_double,
								 "luxury_single" :luxury_single,
								 "luxury_double" :luxury_double,
								 "family_room" :family_room,
						 };
						$.ajax({
							url : 'add_tariff',
							type : 'post',
							data : JSON.stringify(obj),
							dataType : 'json',
							contentType :  'application/json',
							success : function(data) {
								if (data['status'] == 'Success') {
									$('#entryTable').DataTable().ajax.reload( null, false );
									 Swal.fire({
											icon : 'success',
											title : 'successfully!',
											text : data['message']
										})
										$('#entry_model').modal('toggle');
									
									} else if(data['status'] == 'Already_Exist'){
										$('#entry_model').modal('toggle');
										Swal.fire({
											icon : 'warning',
											title : 'Already!',
											text : data['message']
										})
									}
									else if(data['status'] == 'Failed'){
										$('#entry_model').modal('toggle');
										Swal.fire({
											icon : 'Sorry',
											title : 'Invalid!',
											text : data['message']
										})
									}
							}
						});

					}
				});

	});
	</script>
</body>
</html>