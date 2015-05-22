<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--
  dummy page
  User: OCR
  Date: 11/10/14
  Time: 2:20 PM
--%>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<c:set var="context" value="${pageContext.request.contextPath}"/>
		<c:set var="url" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		<link href="${context}/resources/bootstrap-v3.3.0/css/bootstrap.css" rel="stylesheet"/>
	    <link href="${context}/resources/css/cops.styles.css" rel="stylesheet">
		<link href="${context}/resources/css/pace/pace-corner-red.css" rel="stylesheet">
		<link href="${context}/resources/css/global.css" rel="stylesheet">
		<link href="${context}/resources/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet">
	    <title>Customer Identity Validation System</title>
	</head>
	<body>
		<t:header/>
	    <div class="container" style="margin-top:40px">
			<div class="row">
<!-- 				<div class="col-xs-10 col-sm-8 col-md-6 col-xs-offset-1 col-sm-offset-2 col-md-offset-3"> -->
				<div class="col-xs-12 col-sm-12 col-md-12">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<strong><s:message code="denied_title"/></strong>
						</div>
						<div class="panel-body">
			    			<form id="form" method="post" action="<c:url value="/"/>">
								<div class="row">
									<div class="col-xs-12 col-sm-12 col-md-12">
								        <div class="form-group">
								        ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
											<s:message code="session_expired_title_description"/> <a class="" href="<c:url value='/security/login'/>"><s:message code="session_expired_signin"/><i class="fa fa-sign-in icon-blue"></i></a>
						            	</div>
							        </div>
						        </div>
			    			</form>
	    				</div>
	    			</div>
	   			</div>
	    	</div>
	    </div>
		<t:footer/>
		<script src="${context}/resources/js/jquery.js"></script>
		<script src="${context}/resources/bootstrap-v3.3.0/js/bootstrap.js"></script>
		<script src="${context}/resources/js/pace.0.4.10.js"></script>
	</body>
</html>