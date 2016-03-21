<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page session="true"%>
<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%> --%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="url" value="${pageContext.request.contextPath}"></c:set>

<c:url value="/j_spring_security_logout" var="logoutUrl" />
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>BabyCare Web Application</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="${url}/resources/assets/css/bootstrap.min.css"
	rel="stylesheet" />

<!--  Light Bootstrap Dashboard core CSS    -->
<link href="${url}/resources/assets/css/light-bootstrap-dashboard.css"
	rel="stylesheet" />

<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="${url}/resources/assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="${url}/resources/assets/css/pe-icon-7-stroke.css"
	rel="stylesheet" />
</head>
<body>

			<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-8">
						<div id="wizardCard" class="card card-wizard">
							<form id="wizardForm" action="" method="post"
								novalidate="novalidate">
								<div class="header text-center">
									<h3 class="title">Awesome Wizard</h3>
									<p class="category">Split a complicated flow in multiple
										steps</p>
								</div>
								<div class="content">
									<ul class="nav nav-pills">
										<li class="active" style="width: 33.3333%;"><a
											data-toggle="tab" href="#tab1" aria-expanded="true">
											Children Information</a></li>
										<li style="width: 33.3333%;"><a data-toggle="tab"
											href="#tab2">Job Information</a></li>
										<li style="width: 33.3333%;"><a data-toggle="tab"
											href="#tab3">Additional Information</a></li>
									</ul>
									<div class="tab-content">
										<div id="tab1" name="tab1" class="tab-pane active">
											<div class="header">
												<h4 class="title">Parents(s) or Legal Guardian(s):</h4>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label>First Name</label> <input type="text"
															class="form-control" placeholder="City" value="Mike">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Last Name</label> <input type="text"
															class="form-control" placeholder="Country" value="Andrew">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Gender</label> 
														<div class="col-sm-10">
			                                                <label class="checkbox checkbox-inline">
			                                                    <input type="checkbox" data-toggle="checkbox" value="option1">Male
			                                                </label>
			                                                <label class="checkbox checkbox-inline">
			                                                    <input type="checkbox" data-toggle="checkbox" value="option1">Famele
			                                                </label>
                                                		</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-5">
													<div class="form-group">
														<label for="exampleInputEmail1">Email address</label> <input
															type="email" class="form-control" placeholder="Email">
													</div>
												</div>
												<div class="col-md-3">
													<div class="form-group">
														<label>Relationship</label> <input type="text"
															class="form-control" placeholder="Relationship"
															value="Relationship">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label for="exampleInputEmail1">Mobile phone</label> <input
															type="email" class="form-control" placeholder="Email">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label>Address</label> <input type="text"
															class="form-control" placeholder="Home Address"
															value="Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09">
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label>City</label> <input type="text"
															class="form-control" placeholder="City" value="Mike">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Country</label> <input type="text"
															class="form-control" placeholder="Country" value="Andrew">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Postal Code</label> <input type="number"
															class="form-control" placeholder="ZIP Code">
													</div>
												</div>
											</div>

										</div><!--  end tab1  -->

										<div id="tab2" class="tab-pane">
											<div class="header">
												<h4 class="title">Place of Employment:</h4>
											</div>
											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label>Company Name</label> <input type="text"
															class="form-control" placeholder="City" value="Mike">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Email address</label> <input type="text"
															class="form-control" placeholder="Country" value="Andrew">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Office Phone</label> <input type="text"
															class="form-control" placeholder="phone">
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-md-12">
													<div class="form-group">
														<label>Job Address</label> <input type="text"
															class="form-control" placeholder="Home Address"
															value="Bld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09">
													</div>
												</div>
											</div>

											<div class="row">
												<div class="col-md-4">
													<div class="form-group">
														<label>City</label> <input type="text"
															class="form-control" placeholder="City" value="Mike">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Country</label> <input type="text"
															class="form-control" placeholder="Country" value="Andrew">
													</div>
												</div>
												<div class="col-md-4">
													<div class="form-group">
														<label>Postal Code</label> <input type="number"
															class="form-control" placeholder="ZIP Code">
													</div>
												</div>
											</div>

										</div><!--  end tab2  -->

										<div id="tab3" class="tab-pane">
											<div class="row">
												<div class="col-md-12">
													<div class="card card-plain">
														<div class="header">
															<h4 class="title">Table with Links</h4>
															<p class="category">Here is a subtitle for this table</p>
														</div>
														<div class="content table-responsive table-full-width">
															<table class="table">
																<thead>
																	<tr>
																		<th>Name</th>
																		<th class="text-center">Family</th>
																		<th class="text-right">Authority</th>
																		<th class="text-right">Actions</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td><input type="text" class="form-control" placeholder="City" value="Mike"></td>
																		<td class="text-center">
																			<div class="switch"
																				data-on-label="<i class='fa fa-check'></i>"
																				data-off-label="<i class='fa fa-times'></i>">
																				<input type="checkbox" checked />
																			</div>
																		</td>
																		<td class="text-right">
																			<div class="switch"
																				data-on-label="<i class='fa fa-check'></i>"
																				data-off-label="<i class='fa fa-times'></i>">
																				<input type="checkbox" checked />
																			</div>
																		</td>
																		<td class="td-actions text-right"><a href="#"
																			rel="tooltip" title="View Profile"
																			class="btn btn-info btn-simple btn-xs"> <i
																				class="fa fa-user"></i>
																		</a> <a href="#" rel="tooltip" title="Edit Profile"
																			class="btn btn-success btn-simple btn-xs"> <i
																				class="fa fa-edit"></i>
																		</a> <a href="#" rel="tooltip" title="Remove"
																			class="btn btn-danger btn-simple btn-xs"> <i
																				class="fa fa-times"></i>
																		</a></td>
																	</tr>
																	<tr>
																		<td><input type="text" class="form-control" placeholder="City" value="Mike"></td>
																		<td class="text-center">
																			<div class="switch"
																				data-on-label="<i class='fa fa-check'></i>"
																				data-off-label="<i class='fa fa-times'></i>">
																				<input type="checkbox" checked />
																			</div>
																		</td>
																		<td class="text-right">
																			<div class="switch"
																				data-on-label="<i class='fa fa-check'></i>"
																				data-off-label="<i class='fa fa-times'></i>">
																				<input type="checkbox" checked />
																			</div>

																		</td>
																		<td class="td-actions text-right"><a href="#"
																			rel="tooltip" title="View Profile"
																			class="btn btn-info btn-simple btn-xs"> <i
																				class="fa fa-user"></i>
																		</a> <a href="#" rel="tooltip" title="Edit Profile"
																			class="btn btn-success btn-simple btn-xs"> <i
																				class="fa fa-edit"></i>
																		</a> <a href="#" rel="tooltip" title="Remove"
																			class="btn btn-danger btn-simple btn-xs"> <i
																				class="fa fa-times"></i>
																		</a></td>
																	</tr>
																	
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
										</div>

									</div>
								</div>
								<div class="footer">
									<button
										class="btn btn-default btn-fill btn-wd btn-back pull-left disabled"
										type="button" style="display: none;">Back</button>
									<button
										class="btn btn-info btn-fill btn-wd btn-next pull-right"
										type="button" onclick="onTabShow()">Next</button>
									<button
										class="btn btn-info btn-fill btn-wd btn-finish pull-right"
										onclick="onFinishWizard()" type="button">Finish</button>
									<div class="clearfix"></div>
								</div>
							</form>
						</div>
					</div>
					
					<div class="col-md-4">
					<div class="card card-user">
						<div class="image">
							
						</div>
						<div class="content">
							<div class="author">
								<a href="#"> <img class="avatar border-gray"
									src="${url}/resources/assets/img/faces/face-0.jpg" alt="..." />

									<h4 class="title">
										Mike Andrew<br /> <small>michael24</small>
									</h4>
								</a>
							</div>
							<p class="description text-center">
								"Lamborghini Mercy <br> Your chick she so thirsty <br>
								I'm in that two seat Lambo"
							</p>
						</div>
						<hr>
						<div class="text-center">
							<button href="#" class="btn btn-simple">
								<i class="fa fa-facebook-square"></i>
							</button>
							<button href="#" class="btn btn-simple">
								<i class="fa fa-twitter"></i>
							</button>
							<button href="#" class="btn btn-simple">
								<i class="fa fa-google-plus-square"></i>
							</button>

						</div>
					</div>
				</div>
					
					
				</div>
			</div>
		</div>
	
</body>
<!--   Core JS Files   -->
<script src="${url}/resources/assets/js/jquery.min.js"
	type="text/javascript"></script>
<script src="${url}/resources/assets/js/jquery-ui.min.js"
	type="text/javascript"></script>
<script src="${url}/resources/assets/js/bootstrap.min.js"
	type="text/javascript"></script>


<!--  Forms Validations Plugin -->
<script src="${url}/resources/assets/js/jquery.validate.min.js"></script>

<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
<script src="${url}/resources/assets/js/moment.min.js"></script>

<!--  Date Time Picker Plugin is included in this js file -->
<script src="${url}/resources/assets/js/bootstrap-datetimepicker.js"></script>

<!--  Select Picker Plugin -->
<script src="${url}/resources/assets/js/bootstrap-selectpicker.js"></script>

<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
<script
	src="${url}/resources/assets/js/bootstrap-checkbox-radio-switch-tags.js"></script>

<!--  Charts Plugin -->
<script src="${url}/resources/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="${url}/resources/assets/js/bootstrap-notify.js"></script>

<!-- Sweet Alert 2 plugin -->
<script src="${url}/resources/assets/js/sweetalert2.js"></script>

<!-- Vector Map plugin -->
<script src="${url}/resources/assets/js/jquery-jvectormap.js"></script>

<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- Wizard Plugin    -->
<script src="${url}/resources/assets/js/jquery.bootstrap.wizard.min.js"></script>

<!--  Datatable Plugin    -->
<script src="${url}/resources/assets/js/bootstrap-table.js"></script>

<!--  Full Calendar Plugin    -->
<script src="${url}/resources/assets/js/fullcalendar.min.js"></script>

<!-- Light Bootstrap Dashboard Core javascript and methods -->
<script src="${url}/resources/assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="${url}/resources/assets/js/demo.js"></script>

<script type="text/javascript">
        $().ready(function(){
            
            var $validator = $("#wizardForm").validate({
    		  rules: {
    		    email: {
                    required: true,
                    email: true,
                    minlength: 5
    		    },
    		    first_name: {
    		        required: false,
                    minlength: 5
    		    },
    		    last_name: {
    		        required: false,
                    minlength: 5
    		    },
    		    website: {
    		        required: true,
                    minlength: 5,
                    url: true
    		    },
    		    framework: {
        		    required: false,
        		    minlength: 4
    		    },
    		    cities: {
        		    required: true
    		    },
    		    price:{
        		    number: true
    		    }
    		  }
    		});
    
     
            
            // you can also use the nav-pills-[blue | azure | green | orange | red] for a different color of wizard
            
            $('#wizardCard').bootstrapWizard({
            	tabClass: 'nav nav-pills',            	
            	nextSelector: '.btn-next',
                previousSelector: '.btn-back',
            	onNext: function(tab, navigation, index) {
            		var $valid = $('#wizardForm').valid();
    
            		if(!$valid) {
            			$validator.focusInvalid();
            			return false;
            		}
            	},         
                onInit : function(tab, navigation, index){
                
                    //check number of tabs and fill the entire row
                    var $total = navigation.find('li').length;
                    $width = 100/$total;
                    
                    $display_width = $(document).width();
                    
                    if($display_width < 600 && $total > 3){
                       $width = 50;
                    }
                   navigation.find('li').css('width',$width + '%');                
                },
                onTabClick : function(tab, navigation, index){
                    // Disable the posibility to click on tabs
                    return false;
                },
                onTabShow: function(tab, navigation, index) {
                    var $total = navigation.find('li').length;
                    var $current = index+1;
                    
                    var wizard = navigation.closest('.card-wizard');
                    
                    // If it's the last tab then hide the last button and show the finish instead
                    if($current >= $total) {
                        $(wizard).find('.btn-next').hide();
                        $(wizard).find('.btn-finish').show();
                    } else if($current == 1){
                        $(wizard).find('.btn-back').hide();
                    } else {
                        $(wizard).find('.btn-back').show();
                        $(wizard).find('.btn-next').show();
                        $(wizard).find('.btn-finish').hide();
                    }
                }
                
            });
            
        }); 
        
        function onFinishWizard(){
            //here you can do something, sent the form to server via ajax and show a success message with swal
            
            swal("Good job!", "You clicked the finish button!", "success");
        }   
    </script>

</html>