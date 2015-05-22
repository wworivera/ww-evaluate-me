<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--
  User: OCR
  Date: 12/04/14
  Time: 1:20 PM
--%>
<html lang="en" >
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<c:set var="context" value="${pageContext.request.contextPath}"/>
		<c:set var="url" value="${requestScope['javax.servlet.forward.request_uri']}"/>
	</head>
	<body>
		<div class="container"><!-- class="form" method="POST" action="<c:url value="/customer"/>" -->
		<form action="">
			<!-- 4:3 aspect ratio -->
			<div class="col-xs-8 col-sm-6 col-md-4">
			<div class="embed-responsive embed-responsive-4by3">
			  <iframe class="embed-responsive-item" src="${context}/resources/images/github-git-cheat-sheet.pdf"></iframe>
			</div>
			</div>
		</form>
<%-- 			<form:form id="form" modelAttribute="formCustomerIdentity" enctype="application/json"> --%>
<%-- 				<c:if test="${not empty errorCodesMy}"> --%>
<!-- 					<div class="alert alert-danger" role="alert"> -->
<%-- 						<s:message code="validation_failed_label_description"/> --%>
<!-- 					</div> -->
<%-- 				</c:if> --%>
<!-- 				<div class="row"> -->
<!-- 				</div> -->
<%-- 			</form:form> --%>
		</div>
<%-- 		<script src="${context}/js/session.js"></script> --%>
	</body>
</html>
