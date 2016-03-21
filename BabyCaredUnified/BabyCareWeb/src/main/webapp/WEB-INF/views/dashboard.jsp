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

	<div class="wrapper">
		<div class="content">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card ">
							<div class="header">
								<h4 class="title">Global Sales by Top Locations</h4>
								<p class="category">All products that were shipped</p>
							</div>
							<div class="content">
								<div class="row">
									<div class="col-md-5">
										<div class="table-responsive">
											<table class="table">
												<tbody>
													<tr>
														<td>
															<div class="flag">
																<img src="${url}/resources/assets/img/flags/US.png" />
															</div>
														</td>
														<td>USA</td>
														<td class="text-right">2.920</td>
														<td class="text-right">53.23%</td>
													</tr>
													<tr>
														<td>
															<div class="flag">
																<img src="${url}/resources/assets/img/flags/DE.png" />
															</div>
														</td>
														<td>Germany</td>
														<td class="text-right">1.300</td>
														<td class="text-right">20.43%</td>
													</tr>
													<tr>
														<td>
															<div class="flag">
																<img src="${url}/resources/assets/img/flags/AU.png" />
															</div>
														</td>
														<td>Australia</td>
														<td class="text-right">760</td>
														<td class="text-right">10.35%</td>
													</tr>
													<tr>
														<td>
															<div class="flag">
																<img src="${url}/resources/assets/img/flags/GB.png" />
															</div>
														</td>
														<td>United Kingdom</td>
														<td class="text-right">690</td>
														<td class="text-right">7.87%</td>
													</tr>
													<tr>
														<td>
															<div class="flag">
																<img src="${url}/resources/assets/img/flags/RO.png" />
															</div>
														</td>
														<td>Romania</td>
														<td class="text-right">600</td>
														<td class="text-right">5.94%</td>
													</tr>
													<tr>
														<td>
															<div class="flag">
																<img src="${url}/resources/assets/img/flags/BR.png" />
															</div>
														</td>
														<td>Brasil</td>
														<td class="text-right">550</td>
														<td class="text-right">4.34%</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="col-md-6 col-md-offset-1">
										<div id="worldMap" style="height: 300px;"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-4">
						<div class="card">
							<div class="header">
								<h4 class="title">Email Statistics</h4>
								<p class="category">Last Campaign Performance</p>
							</div>
							<div class="content">
								<div id="chartEmail" class="ct-chart ct-perfect-fourth"></div>
							</div>
							<div class="footer">
								<div class="legend">
									<i class="fa fa-circle text-info"></i> Open <i
										class="fa fa-circle text-danger"></i> Bounce <i
										class="fa fa-circle text-warning"></i> Unsubscribe
								</div>
								<hr>
								<div class="stats">
									<i class="fa fa-clock-o"></i> Campaign sent 2 days ago
								</div>
							</div>

						</div>
					</div>

					<div class="col-md-8">
						<div class="card">
							<div class="header">
								<h4 class="title">Users Behavior</h4>
								<p class="category">24 Hours performance</p>
							</div>
							<div class="content">
								<div id="chartHours" class="ct-chart"></div>
							</div>
							<div class="footer">
								<div class="legend">
									<i class="fa fa-circle text-info"></i> Open <i
										class="fa fa-circle text-danger"></i> Click <i
										class="fa fa-circle text-warning"></i> Click Second Time
								</div>
								<hr>
								<div class="stats">
									<i class="fa fa-history"></i> Updated 3 minutes ago
								</div>
							</div>
						</div>
					</div>
				</div>



				<div class="row">
					<div class="col-md-6">
						<div class="card ">
							<div class="header">
								<h4 class="title">2014 Sales</h4>
								<p class="category">All products including Taxes</p>
							</div>
							<div class="content">
								<div id="chartActivity" class="ct-chart"></div>
							</div>
							<div class="footer">
								<div class="legend">
									<i class="fa fa-circle text-info"></i> Tesla Model S <i
										class="fa fa-circle text-danger"></i> BMW 5 Series
								</div>
								<hr>
								<div class="stats">
									<i class="fa fa-check"></i> Data information certified
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6">
						<div class="card ">
							<div class="header">
								<h4 class="title">Tasks</h4>
								<p class="category">Backend development</p>
							</div>
							<div class="content">
								<div class="table-full-width">
									<table class="table">
										<tbody>
											<tr>
												<td><label class="checkbox"> <input
														type="checkbox" value="" data-toggle="checkbox">
												</label></td>
												<td>Sign contract for "What are conference organizers
													afraid of?"</td>
												<td class="td-actions text-right">
													<button type="button" rel="tooltip" title="Edit Task"
														class="btn btn-info btn-simple btn-xs">
														<i class="fa fa-edit"></i>
													</button>
													<button type="button" rel="tooltip" title="Remove"
														class="btn btn-danger btn-simple btn-xs">
														<i class="fa fa-times"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td><label class="checkbox"> <input
														type="checkbox" value="" data-toggle="checkbox" checked="">
												</label></td>
												<td>Lines From Great Russian Literature? Or E-mails
													From My Boss?</td>
												<td class="td-actions text-right">
													<button type="button" rel="tooltip" title="Edit Task"
														class="btn btn-info btn-simple btn-xs">
														<i class="fa fa-edit"></i>
													</button>
													<button type="button" rel="tooltip" title="Remove"
														class="btn btn-danger btn-simple btn-xs">
														<i class="fa fa-times"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td><label class="checkbox"> <input
														type="checkbox" value="" data-toggle="checkbox" checked="">
												</label></td>
												<td>Flooded: One year later, assessing what was lost
													and what was found when a ravaging rain swept through metro
													Detroit</td>
												<td class="td-actions text-right">
													<button type="button" rel="tooltip" title="Edit Task"
														class="btn btn-info btn-simple btn-xs">
														<i class="fa fa-edit"></i>
													</button>
													<button type="button" rel="tooltip" title="Remove"
														class="btn btn-danger btn-simple btn-xs">
														<i class="fa fa-times"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td><label class="checkbox"> <input
														type="checkbox" value="" data-toggle="checkbox">
												</label></td>
												<td>Create 4 Invisible User Experiences you Never Knew
													About</td>
												<td class="td-actions text-right">
													<button type="button" rel="tooltip" title="Edit Task"
														class="btn btn-info btn-simple btn-xs">
														<i class="fa fa-edit"></i>
													</button>
													<button type="button" rel="tooltip" title="Remove"
														class="btn btn-danger btn-simple btn-xs">
														<i class="fa fa-times"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td><label class="checkbox"> <input
														type="checkbox" value="" data-toggle="checkbox">
												</label></td>
												<td>Read "Following makes Medium better"</td>
												<td class="td-actions text-right">
													<button type="button" rel="tooltip" title="Edit Task"
														class="btn btn-info btn-simple btn-xs">
														<i class="fa fa-edit"></i>
													</button>
													<button type="button" rel="tooltip" title="Remove"
														class="btn btn-danger btn-simple btn-xs">
														<i class="fa fa-times"></i>
													</button>
												</td>
											</tr>
											<tr>
												<td><label class="checkbox"> <input
														type="checkbox" value="" data-toggle="checkbox">
												</label></td>
												<td>Unfollow 5 enemies from twitter</td>
												<td class="td-actions text-right">
													<button type="button" rel="tooltip" title="Edit Task"
														class="btn btn-info btn-simple btn-xs">
														<i class="fa fa-edit"></i>
													</button>
													<button type="button" rel="tooltip" title="Remove"
														class="btn btn-danger btn-simple btn-xs">
														<i class="fa fa-times"></i>
													</button>
												</td>
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
            lbd.checkFullPageBackgroundImage();
            
            setTimeout(function(){
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
            }, 700)
        });
    </script>
</html>
