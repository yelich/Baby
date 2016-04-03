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
			<div class="col-md-10 col-md-offset-1">
				<div class="card card-wizard" id="wizardCard">
					<form id="wizardForm" method="" action="">

						<div class="header text-center">
							<h3 class="title">Aplication of Register</h3>
							<p class="category">Register in multiple steps</p>
						</div>

						<div class="content">
							<ul class="nav">
								<li><a href="#tab1" data-toggle="tab">Parents</a></li>
								<li><a href="#tab2" data-toggle="tab">Children</a></li>
								<li><a href="#tab3" data-toggle="tab">Fees</a></li>
							</ul>

							<div class="tab-content">
								<div class="tab-pane" id="tab1">
									<h5 class="text-left">Parents(s) or Legal Guardian(s):</h5>
									<div class="content">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-target="#collapseOne" href="#"
															data-toggle="collapse">Personal Information<b
															class="caret"></b>
														</a>
													</h4>
												</div>
												<div id="collapseOne" class="panel-collapse collapse">
													<div class="panel-body">
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>First Name<star>*</star></label> <input
																		class="form-control" type="text" name="firstname" id="firstname"
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
																			type="checkbox" data-toggle="checkbox"
																			value="option1">Male
																		</label> <label class="checkbox checkbox-inline"> <input
																			type="checkbox" data-toggle="checkbox"
																			value="option2">Famele
																		</label>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label class="control-label">Email<star>*</star></label>
																	<input class="form-control" type="text" name="email"
																		email="true" required="true"
																		placeholder="ex: hello@babydaycare.com" />
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
																		number="true" required="true"
																		placeholder="ex: 786-3677841" />
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
																	<label>City</label> <input type="text"
																		class="form-control" type="text" name="city"
																		placeholder="ex: Boston">

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
														<div class="row">
															<div class="col-md-3 col-md-offset-9">
																<button class="btn btn-success btn-fill btn-wd">Add</button>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-target="#collapseTwo" href="#"
															data-toggle="collapse">Job Information<b
															class="caret"></b>
														</a>
													</h4>
												</div>
												<div id="collapseTwo" class="panel-collapse collapse">
													<div class="panel-body">
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
																	<label>Email address</label> <input
																		class="form-control" type="text" name="emailjob"
																		placeholder="ex: hello@company.com">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Office Phone</label> <input class="form-control"
																		type="text" name="officephone" number="true"
																		placeholder="ex: 786-3677841">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label>Job Address</label> <input class="form-control"
																		type="text" name="jobaddress"
																		placeholder="ex: ld Mihail Kogalniceanu, nr. 8 Bl 1, Sc 1, Ap 09">
																</div>
															</div>
														</div>

														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>City</label><input type="text"
																		class="form-control" type="text" name="jobcity"
																		placeholder="ex: Boston">

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
														<div class="row">
															<div class="col-md-3 col-md-offset-9">
																<button class="btn btn-success btn-fill btn-wd">Add</button>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-target="#collapseThree" href="#"
															data-toggle="collapse">Emergency Contacts<b
															class="caret"></b>
														</a>
													</h4>
												</div>
												<div id="collapseThree" class="panel-collapse collapse">
													<div class="panel-body">
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>First Name<star>*</star></label> <input
																		class="form-control" type="text"
																		name="contactfirstname" required="true"
																		placeholder="ex: luis">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Last Name<star>*</star></label> <input
																		class="form-control" type="text"
																		name="contactlastname" required="true"
																		placeholder="ex: Briceno">
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
																	<label class="control-label">Place of
																		Employment</label> <input class="form-control" type="text"
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
														<div class="row">
															<div class="col-md-3 col-md-offset-9">
																<button class="btn btn-success btn-fill btn-wd">Add</button>
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>

								<div class="tab-pane" id="tab2">
									<h5 class="text-left">Application of Register to Provide
										Child Care</h5>
									<div class="content">
										<div class="panel-group" id="accordion">
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-target="#collapseFour" href="#"
															data-toggle="collapse">Child Information<b
															class="caret"></b>
														</a>
													</h4>
												</div>
												<div id="collapseFour" class="panel-collapse collapse">
													<div class="panel-body">
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>Child's Name<star>*</star></label> <input
																		class="form-control" type="text" name="childname"
																		required="true" placeholder="ex: luis">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Nickname<star>*</star></label> <input
																		class="form-control" type="text" name="nickname"
																		required="true" placeholder="ex: Briceno">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Gender</label>
																	<div class="col-sm-10">
																		<label class="checkbox checkbox-inline"> <input
																			type="checkbox" data-toggle="checkbox"
																			value="childoption1">Male
																		</label> <label class="checkbox checkbox-inline"> <input
																			type="checkbox" data-toggle="checkbox"
																			value="childoption2">Famele
																		</label>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label class="control-label">D.O.B<star>*</star></label>
																	<input type="text" class="form-control datetimepicker"
																		placeholder="ex: Date" />
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>School Attending<star>*</star></label> <select
																		name="school" class="selectpicker"
																		data-title="Single Select"
																		data-style="btn-default btn-block"
																		data-menu-style="dropdown-blue" required="true">
																		<option value="school1">School 1</option>
																		<option value="school1">School 2</option>
																	</select>
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label class="control-label">Grade Level<star>*</star></label>
																	<select name="grade" class="selectpicker"
																		data-title="Single Select"
																		data-style="btn-default btn-block"
																		data-menu-style="dropdown-blue" required="true">
																		<option value="grade1">Grade 1</option>
																		<option value="grade2">Grade 2</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-3 col-md-offset-9">
																<button class="btn btn-success btn-fill btn-wd">Add</button>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-target="#collapseFive" href="#"
															data-toggle="collapse">Medical Tratement<b
															class="caret"></b>
														</a>
													</h4>
												</div>
												<div id="collapseFive" class="panel-collapse collapse">
													<div class="panel-body">
														<div class="row">
															<div class="col-sm-10">
																<div class="form-group">
																	<p class="category">
																		The medication is a prescription from pharmacy. <label
																			class="radio radio-inline"> <input
																			type="radio" data-toggle="radio" name="optionsRadios"
																			value="option1" checked="">Yes
																		</label> <label class="radio radio-inline"> <input
																			type="radio" data-toggle="radio" name="optionsRadios"
																			value="option2">No
																		</label>
																	</p>
																</div>
															</div>
														</div>
														<br />
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>Name Medication<star>*</star></label><input
																		class="form-control" type="text" name="namemedication"
																		required="true" placeholder="ex: Medication" />
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Amount of Dosage<star>*</star></label><input
																		class="form-control" type="text"
																		name="dosagemedication" number="true" required="true"
																		placeholder="ex: 2 as follows">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Time(s) to be given</label>
																	<star>*</star>
																	<input type="text" class="form-control timepicker"
																		required="true" placeholder="Time Picker Here" />
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<div class="alert alert-info">
																		<span>Note: Expiration date &#40; may not
																			exceed six months from date of this request if
																			prescribing medication or food supplement&#41;</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label>Specific instructions for administration<star>*</star></label><input
																		class="form-control" type="text" name="instructions"
																		required="true"
																		placeholder="ex: instructions for administration">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label>Possible side effects to watch for<star>*</star></label><input
																		class="form-control" type="text" name="effects"
																		required="true"
																		placeholder="ex: Possible side effects">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>Expiration date</label> <input type="text"
																		class="form-control datetimepicker" name="expiration"
																		required="true" placeholder="ex: Date" />
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Name of Physician<star>*</star></label><input
																		class="form-control" type="text" name="physician"
																		required="true" placeholder="ex: Luis Briceno">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Telephone of Physician<star>*</star></label><input
																		class="form-control" type="text" name="phonephysician"
																		required="true" placeholder="ex: 7863677541">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-4">
																<div class="form-group">
																	<label>Rx Number<star>*</star></label><input
																		class="form-control" type="text" name="Rx Number"
																		number="true" required="true"
																		placeholder="ex: Rx Number">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Pharmacy<star>*</star></label><input
																		class="form-control" type="text" name="pharmacy"
																		required="true" placeholder="ex: Name Pharmacy">
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>Telephone<star>*</star></label><input
																		class="form-control" type="text" name="phonepharmacy"
																		required="true" placeholder="ex: 7863677541">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="form-group">
																	<label>Street Address<star>*</star></label><input
																		class="form-control" type="text" name="streetpharmacy"
																		required="true" placeholder="ex: Street Address">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-3 col-md-offset-9">
																<button class="btn btn-success btn-fill btn-wd">Add</button>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="panel panel-default">
												<div class="panel-heading">
													<h4 class="panel-title">
														<a data-target="#collapseSix" href="#"
															data-toggle="collapse">Authorization for Child<b
															class="caret"></b>
														</a>
													</h4>
												</div>
												<div id="collapseSix" class="panel-collapse collapse">
													<div class="panel-body">
														<legend><h5>The following person(s) has authority to</h5></legend>
														<div class="row">
															<div class="col-md-3">
																<div class="form-group">
																	<label>Child</label><select multiple
																		data-title="Multiple Select" name="currency"
																		class="selectpicker"
																		data-style="btn-info btn-fill btn-block"
																		data-menu-style="dropdown-blue">
																		<option value="chil1">Child 1</option>
																		<option value="chil2">Child 2</option>
																	</select>
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-group">
																	<label>to pick up</label><input
																		class="form-control" type="text" name="autho"
																		required="true" placeholder="ex: Luis">
																</div>
															</div>
															<div class="col-md-5">
																<div class="form-group">
																	<label>does not have to pick up</label><input
																		class="form-control" type="text" name="notautho"
																		required="true" placeholder="ex: Luis">
																</div>
															</div>
														</div>
														<div>
															<div class="alert alert-info">
																<span>The Parent(s) shall inform EL BEBE DAYCARE CENTER in advance if someone other than the Parent(s) or person(s) listed above will pick up the child(ren).</span>
															</div>
														</div>
														<legend><h5>Application of Topical Products</h5></legend>
														<div class="row">
															<fieldset>
																<div class="form-group">
																	<label class="col-sm-2 col-md-4 control-label">does not have to pick up</label>
																	<div class="col-sm-2">
																		<div class="switch"
																			data-on-label="<i class='fa fa-check'></i>"
																			data-off-label="<i class='fa fa-times'></i>">
																			<input type="checkbox" checked />
																		</div>
																	</div>
																	<div class="col-sm-2"></div>
																</div>
															</fieldset>
															<fieldset>
																<div class="form-group">
																	<label class="col-sm-2 col-md-4 control-label">Insect Repellant (as needed)</label>
																	<div class="col-sm-2">
																		<div class="switch"
																			data-on-label="<i class='fa fa-check'></i>"
																			data-off-label="<i class='fa fa-times'></i>">
																			<input type="checkbox" checked />
																		</div>
																	</div>
																</div>
															</fieldset>
															<fieldset>
																<div class="form-group">
																	<label class="col-sm-2 col-md-4 control-label">Diaper Rash Ointment</label>
																	<div class="col-sm-3">
																		<div class="switch"
																			data-on-label="<i class='fa fa-check'></i>"
																			data-off-label="<i class='fa fa-times'></i>">
																			<input type="checkbox" checked />
																		</div>
																	</div>
																</div>
															</fieldset>
															<fieldset>
																<div class="form-group">
																	<label class="col-sm-2 col-md-4 control-label">Other</label>
																	<div class="col-sm-2">
																		<div class="switch"
																			data-on-label="<i class='fa fa-check'></i>"
																			data-off-label="<i class='fa fa-times'></i>">
																			<input type="checkbox" checked />
																		</div>
																	</div>
																</div>
															</fieldset>
															
																<div class="form-group">
																	<div class="col-md-12"><input
																		class="form-control" type="text" name="other"
																		required="true" placeholder="ex: Topical"></div>
																</div>
															
														</div>
														<br/>
														<div class="row">
															<div class="col-md-3 col-md-offset-9">
																<button class="btn btn-success btn-fill btn-wd">Add</button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="tab-pane" id="tab3">
									<div class="row">
										<div class="col-md-12">
											<div>
												<p class="text-muted">
													Childcare fees are strictly based on the scheduled hours of
													contracted childcare services. EL BEBE DAYCARE CENTER will
													not adjust childcare fees for late arrival, early pickup,
													or missed days. Please check out the<a class="text-primary"
														href="fees.html"> Fees</a>
												</p>
											</div>
											<!-- <div class="alert alert-info">
												<span>Childcare fees are strictly based on the
													scheduled hours of contracted childcare services. EL BEBE
													DAYCARE CENTER will not adjust childcare fees for late
													arrival, early pickup, or missed days. Please check out the<a class="text-warning" href="fees.html"> Fees</a></span>
											</div> -->
											<div class="card">
												<div class="content table-responsive table-full-width">
													<table class="table">
														<thead>
															<tr>
																<th class="text-left">Child's</th>
																<th class="text-left">Age</th>
																<th class="text-left">Grade</th>
																<th class="text-center">Day contract</th>
																<th class="text-center">Hour contract</th>
																<th class="text-left">Fees</th>
																<th class="text-left">Actions</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="text-left"><lable>Luis Briceno</lable></td>
																<td class="text-left">10 old</td>
																<td>1st grade</td>
																<td class="text-center"><select multiple
																		data-title="Multiple Select" name="currency"
																		class="selectpicker"
																		data-style="btn-info btn-fill btn-block"
																		data-menu-style="dropdown-blue">
																		<option value="monday">Monday</option>
																		<option value="tuesday">Tuesday</option>
																		<option value="wednesday">Wednesday</option>
																		<option value="thursday">Thursday</option>
																		<option value="friday">Friday</option>
																		<option value="saturday">Saturday</option>
																		<option value="sunday">Sunday</option>
																	</select></td>
																	<td class="text-center"><select multiple
																		data-title="Multiple Select" name="currency"
																		class="selectpicker"
																		data-style="btn-info btn-fill btn-block"
																		data-menu-style="dropdown-blue">
																		<option value="monday">Monday</option>
																		<option value="tuesday">Tuesday</option>
																		<option value="wednesday">Wednesday</option>
																		<option value="thursday">Thursday</option>
																		<option value="friday">Friday</option>
																		<option value="saturday">Saturday</option>
																		<option value="sunday">Sunday</option>
																	</select></td>
																	<td class="td-number">$176.00</td>
																<td class="td-actions">
																	<button type="button" rel="tooltip"
																		data-placement="left" title="View Post"
																		class="btn btn-info btn-simple btn-icon">
																		<i class="fa fa-image"></i>
																	</button>
																	<button type="button" rel="tooltip"
																		data-placement="left" title="Edit Post"
																		class="btn btn-success btn-simple btn-icon">
																		<i class="fa fa-edit"></i>
																	</button>
																	<button type="button" rel="tooltip"
																		data-placement="left" title="Remove Post"
																		class="btn btn-danger btn-simple btn-icon ">
																		<i class="fa fa-times"></i>
																	</button>
																</td>
															</tr>
															<tr>
																<td class="text-left"><lable>Luis Briceno</lable></td>
																<td class="text-left">10 old</td>
																<td>1st grade</td>
																<td class="text-center"><select multiple
																		data-title="Multiple Select" name="currency"
																		class="selectpicker"
																		data-style="btn-info btn-fill btn-block"
																		data-menu-style="dropdown-blue">
																		<option value="monday">Monday</option>
																		<option value="tuesday">Tuesday</option>
																		<option value="wednesday">Wednesday</option>
																		<option value="thursday">Thursday</option>
																		<option value="friday">Friday</option>
																		<option value="saturday">Saturday</option>
																		<option value="sunday">Sunday</option>
																	</select></td>
																	<td class="text-center"><select multiple
																		data-title="Multiple Select" name="currency"
																		class="selectpicker"
																		data-style="btn-info btn-fill btn-block"
																		data-menu-style="dropdown-blue">
																		<option value="monday">Monday</option>
																		<option value="tuesday">Tuesday</option>
																		<option value="wednesday">Wednesday</option>
																		<option value="thursday">Thursday</option>
																		<option value="friday">Friday</option>
																		<option value="saturday">Saturday</option>
																		<option value="sunday">Sunday</option>
																	</select></td>
																	<td class="td-number">$142.00</td>
																<td class="td-actions">
																	<button type="button" rel="tooltip"
																		data-placement="left" title="View Post"
																		class="btn btn-info btn-simple btn-icon">
																		<i class="fa fa-image"></i>
																	</button>
																	<button type="button" rel="tooltip"
																		data-placement="left" title="Edit Post"
																		class="btn btn-success btn-simple btn-icon">
																		<i class="fa fa-edit"></i>
																	</button>
																	<button type="button" rel="tooltip"
																		data-placement="left" title="Remove Post"
																		class="btn btn-danger btn-simple btn-icon ">
																		<i class="fa fa-times"></i>
																	</button>
																</td>
															</tr>
															<tr>
																<td class="text-left"></td>
																<td class="text-left"></td>
																<td></td>
																<td class="text-center"></td>
																	<td class="text-right">Quantity</td>
																	<td class="td-number">$318.00</td>
																<td class="td-actions"></td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<!--  end card  -->
										</div>
										<!-- end col-md-12 -->
									</div>
									<!-- end row -->
								</div>
							</div>
						</div>
						<div class="footer">
							<button type="button"
								class="btn btn-default btn-fill btn-wd btn-back pull-left">Back</button>

							<button type="button"
								class="btn btn-info btn-fill btn-wd btn-next pull-right">Next</button>
							<button type="button"
								class="btn btn-info btn-fill btn-wd btn-finish pull-right"
								onclick="onFinishWizard()">Finish</button>
							<div class="clearfix"></div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</html>