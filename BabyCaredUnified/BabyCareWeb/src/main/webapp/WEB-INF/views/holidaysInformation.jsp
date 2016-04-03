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
			<div class="col-md-12">
				<div class="card">
					<form id="allInputsFormValidation" class="form-horizontal"
						action="" method="post" novalidate="">
						<div class="content">
							<legend>Administration of Fees</legend>
							<fieldset>
								<div class="form-group">
									<label class="col-sm-2 control-label">Description</label>
									<div class="col-sm-3">
										<input class="form-control" id="description" type="text"
											placeholder="ex: Full Time" />
									</div>
									<label class="col-sm-2 control-label">Date</label>
									<div class="col-sm-3">
										<input class="form-control" id="idDestination" type="text"
											placeholder="ex: 03/15/2016" />
									</div>
									
								</div>
							</fieldset>
						</div>
						<div class="footer text-center">
							<button type="submit" class="btn btn-info btn-fill">Register</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</html>