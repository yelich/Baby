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
<div class="content">
	<div class="container-fluid">
		<div class="row">
				<div class="col-md-8 col-md-offset-2">
				<div id="wizardCard" class="card card-wizard">
					<form id="wizardForm" action="" method="post"
						novalidate="novalidate">
						<div class="header text-center">
							<h3 class="title">Aplication of Register</h3>
							<p class="category">Register in multiple steps</p>
						</div>
						<div class="content">
							<ul class="nav nav-pills">
								<li class="active" style="width: 33.3333%;"><a
									data-toggle="tab" href="#tab1" aria-expanded="true">
										Personal Information</a></li>
								<li style="width: 33.3333%;"><a data-toggle="tab"
									href="#tab2">Job Information</a></li>
								<li style="width: 33.3333%;"><a data-toggle="tab"
									href="#tab3">Emergency Contacts</a></li>
							</ul>
							<div class="tab-content">
								<div id="tab1" class="tab-pane active">
									<h4 class="text-left">Parents(s) or Legal Guardian(s):</h4>
									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<label>First Name<star>*</star></label> <input
													class="form-control" type="text" name="firstname"
													required="true" placeholder="ex: luis">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Last Name<star>*</star></label> <input
													class="form-control" type="text" name="lastname"
													required="true" placeholder="ex: Briceno">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Gender</label>
												<div class="col-sm-10">
													<label class="checkbox checkbox-inline"> <input
														type="checkbox" data-toggle="checkbox" value="option1">Male
													</label> <label class="checkbox checkbox-inline"> <input
														type="checkbox" data-toggle="checkbox" value="option2">Famele
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<label class="control-label">Email<star>*</star></label> <input
													class="form-control" type="text" name="email" email="true"
													required="true" placeholder="ex: hello@babydaycare.com" />
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Relationship<star>*</star></label> <select
													name="relationship" class="selectpicker"
													data-title="Single Select"
													data-style="btn-default btn-block"
													data-menu-style="dropdown-blue" required="true">
													<option value="father">Father</option>
													<option value="mother">Mother</option>
												</select>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label class="control-label">Mobile phone<star>*</star></label>
												<input class="form-control" type="text" name="phone"
													number="true" required="true" placeholder="ex: 786-3677841" />
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Address<star>*</star></label> <input
													class="form-control" type="text" name="address"
													required="true"
													placeholder="ex: ld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<label>City</label> <input type="text" class="form-control"
													type="text" name="city" placeholder="ex: Boston">

											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Country</label> <input type="text"
													class="form-control" type="text" name="country"
													placeholder="ex: USA">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Postal Code</label> <input class="form-control"
													type="text" name="code" number="true"
													placeholder="ex: 3331">
											</div>
										</div>
									</div>

								</div>
								<!--  end tab1  -->

								<div id="tab2" class="tab-pane">
									<h4 class="text-left">Parents(s) or Legal Guardian(s):</h4>
									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<label>Company Name</label> <input class="form-control"
													type="text" name="companyname"
													placeholder="ex: BabyDayCare">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Email address<star>*</star></label> <input
													class="form-control" type="text" name="emailjob"
													email="true" required="true"
													placeholder="ex: hello@company.com">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Office Phone<star>*</star></label> <input
													class="form-control" type="text" name="officephone"
													number="true" required="true" placeholder="ex: 786-3677841">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="form-group">
												<label>Job Address<star>*</star></label> <input
													class="form-control" type="text" name="jobaddress"
													required="true"
													placeholder="ex: ld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<label>City</label> <input type="text" class="form-control"
													type="text" name="jobcity" placeholder="ex: Boston">

											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Country</label> <input type="text"
													class="form-control" type="text" name="jobcountry"
													placeholder="ex: USA">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<label>Postal Code</label> <input class="form-control"
													type="text" name="jobcode" number="true"
													placeholder="ex: 3331">
											</div>
										</div>
									</div>

								</div>
								<!--  end tab2  -->

								<div id="tab3" class="tab-pane">
									<h4 class="text-left">Parents(s) or Legal Guardian(s):</h4>
									<div class="content">
										<!--  Validate if this content is necesarry-->
										<ul role="tablist" class="nav nav-tabs">
											<li role="presentation" class="active"><a href="#agency"
												data-toggle="tab">Emergency Contacts</a></li>
											<li><a href="#map-logo" role="tab" data-toggle="tab">
													<i class="fa fa-user-plus"></i>
											</a></li>
										</ul>

										<div class="tab-content">
											<div id="agency" class="tab-pane active">
												<div class="row">
													<div class="col-md-4">
														<div class="form-group">
															<label>First Name<star>*</star></label> <input
																class="form-control" type="text" name="contactfirstname"
																required="true" placeholder="ex: luis">
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label>Last Name<star>*</star></label> <input
																class="form-control" type="text" name="contactlastname"
																required="true" placeholder="ex: Briceno">
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label>Relationship<star>*</star></label> <select
																name="contactrelationship" class="selectpicker"
																data-title="Single Select"
																data-style="btn-default btn-block"
																data-menu-style="dropdown-blue" required="true">
																<option value="id">Father</option>
																<option value="ms">Mother</option>
															</select>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-4">
														<div class="form-group">
															<label class="control-label">Place of Employment</label>
															<input class="form-control" type="text"
																name="contactemployment" required="true"
																placeholder="ex: BabyDayCare">
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label class="control-label">Mobile phone<star>*</star></label>
															<input class="form-control" type="text"
																name="contactphone" number="true" required="true"
																placeholder="ex: 786-3677841" />
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label class="control-label">Other Telephone
																Number</label> <input class="form-control" type="text"
																name="contactmobil" number="true" required="true"
																placeholder="ex: 786-3677841" />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-12">
														<div class="form-group">
															<label>Address<star>*</star></label> <input
																class="form-control" type="text" name="contactaddress"
																required="true"
																placeholder="ex: ld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09">
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-4">
														<div class="form-group">
															<label>City</label> <input type="text"
																class="form-control" type="text" name="contactcity"
																placeholder="ex: Boston">
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label>Country</label> <input type="text"
																class="form-control" type="text" name="contactcountry"
																placeholder="ex: USA">
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label>Postal Code</label> <input class="form-control"
																type="text" name="contactcode" number="true"
																placeholder="ex: 3331">
														</div>
													</div>
												</div>
											</div>
											<!--end agency>  -->

										</div>
										<!--end div class="tab-content">  -->

									</div>
									<!--end <div class="content">  -->

								</div>
								<!-- end <div id="tab3" class="tab-pane">-->

							</div>
							<!--end <div class="tab-content">  -->
						</div>
						<!--end <div class="content"> -->
						<div class="footer">
							<button
								class="btn btn-default btn-fill btn-wd btn-back pull-left disabled"
								type="button" style="display: none;">Back</button>
							<button class="btn btn-info btn-fill btn-wd btn-next pull-right"
								type="button" onclick="onTabShow()">Next</button>
							<button
								class="btn btn-info btn-fill btn-wd btn-finish pull-right"
								onclick="onFinishWizard()" type="button">Finish</button>
							<div class="clearfix"></div>
						</div>

					</form>
				</div>
			</div>
</div>
	</div>
</div>
</html>