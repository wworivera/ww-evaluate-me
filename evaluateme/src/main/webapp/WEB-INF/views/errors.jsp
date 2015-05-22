<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<c:set var="context" value="${pageContext.request.contextPath}"/>
		<c:set var="url" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		<link href="${context}/resources/bootstrap-v3.3.0/css/bootstrap.css" rel="stylesheet"/>
	    <link href="${context}/resources/css/cops.styles.css" rel="stylesheet">
		<link href="${context}/resources/css/pace/pace-corner-red.css" rel="stylesheet">
		<link href="${context}/resources/css/global.css" rel="stylesheet">
		<link href="${context}/resources/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet">
	</head>
	<body>
		<t:topmenu/>
		<t:header/>
		<t:sessionModal/>
		<t:messages/>
		<script src="${context}/resources/js/jquery.js"></script>
		<script src="${context}/resources/bootstrap-v3.3.0/js/bootstrap.js"></script>
		<script src="${context}/resources/js/pace.0.4.10.js"></script>
		<script src="${context}/resources/js/bootstrap-session-timeout.js"></script>
		<script src="${context}/js/session.js"></script>
		<t:footer/>
	</body>
</html>