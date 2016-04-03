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
			<!-- <div class="col-md-8"> -->
			<div class="col-md-8 col-md-offset-2">
				<div id="wizardCard" class="card card-wizard">
					<form id="wizardForm" action="" method="post"
						novalidate="novalidate">
						<div class="header text-center">
							<h3 class="title">Application of Register to Provide Child
								Care</h3>
							<p class="category">Register in multiple steps</p>
						</div>
						<div class="content">
							<ul class="nav nav-pills">
								<li class="active" style="width: 33.3333%;"><a
									data-toggle="tab" href="#tab1" aria-expanded="true"> Child
										Information</a></li>
								<li style="width: 33.3333%;"><a data-toggle="tab"
									href="#tab2">Medical Treatment</a></li>
								<li style="width: 33.3333%;"><a data-toggle="tab"
									href="#tab3">Authorization for Child</a></li>
							</ul>
							<div class="tab-content">
								<div id="tab1" class="tab-pane active">
									<h4 class="text-left">To provide child care for:</h4>
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
												<label class="control-label">D.O.B<star>*</star></label> <input
													type="text" class="form-control datetimepicker"
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
										<div class="col-md-12">
											<div class="form-group">
												<label>I give my permission for photographs of my
													child to be published.<star>*</star>
												</label> <label class="radio"> <input type="radio"
													data-toggle="radio" name="optionsRadios2" value="">
													Radio is off
												</label> <label class="radio"> <input type="radio"
													data-toggle="radio" name="optionsRadios2" value="" checked>
													Radio is on
												</label>
											</div>
										</div>
									</div>



								</div>
								<!--  end tab1  -->

								<div id="tab2" class="tab-pane">
									<h4 class="text-left">To provide child care for:</h4>
								


									<div class="panel-group" id="accordion">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-target="#collapseOne" href="#"
														data-toggle="collapse">Section I<b class="caret"></b>
													</a>
												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse">
												<div class="panel-body">
													<div class="row">
														<div class="col-sm-10">
															<div class="form-group">
																<p class="category">
																	The medication is a prescription from pharmacy. 
																	<label
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
													</div><br />
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
																	class="form-control" type="text" name="dosagemedication"
																	number="true" required="true"
																	placeholder="ex: 2 as follows">
															</div>
														</div>
														<div class="col-md-4">
															<div class="form-group">
																<label>Expiration date</label> <input type="text"
																	class="form-control datetimepicker" name="expiration"
																	placeholder="ex: Date" />
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-md-12">
															<div class="form-group">
																<div class="alert alert-info">
																	<span>Note: Expiration date &#40; may not exceed
																		six months from date of this request if prescribing
																		medication or food supplement&#41;</span>
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
																	required="true" placeholder="ex: Possible side effects">
															</div>
														</div>
													</div>
													
													<div class="row">
														<div class="col-md-4">
															<div class="form-group">
																<label>Rx Number<star>*</star></label><input
																	class="form-control" type="text" name="Rx Number"
																	number="true" required="true" placeholder="ex: Rx Number">
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
													<a data-target="#collapseTwo" href="#"
														data-toggle="collapse"> Section II <b class="caret"></b>
													</a>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse">
												<div class="panel-body">
											<!--agregar contenido  -->		
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-target="#collapseThree" href="#"
														data-toggle="collapse">Section III <b class="caret"></b>
													</a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse">
												<div class="panel-body">
												
												</div>
											</div>
										</div>

									</div>
								</div>
								<!--  end tab2  -->

								<div id="tab3" class="tab-pane">
									<h4 class="text-left">Parents(s) or Legal Guardian(s):</h4>
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