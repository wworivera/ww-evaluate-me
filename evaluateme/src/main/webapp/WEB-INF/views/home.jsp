<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="d" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>

<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
		<c:set var="context" value="${pageContext.request.contextPath}"/>
		<c:set var="url" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		<link href="${context}/resources/bootstrap-v3.3.0/css/bootstrap.css" rel="stylesheet"/>
	    <link href="${context}/resources/css/cops.styles.css" rel="stylesheet">
		<link href="${context}/resources/css/datepicker.css" rel="stylesheet">
		<link href="${context}/resources/css/pace/pace-corner-red.css" rel="stylesheet">
		<link href="${context}/resources/css/global.css" rel="stylesheet">
		<link href="${context}/resources/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet">
		<script src="${context}/resources/js/jquery-1.9.1.js"></script>
		<script src="${context}/resources/js/jquery.js"></script>
		<script src="${context}/resources/js/pace.0.4.10.js"></script>
		<script src="${context}/resources/js/jquery-ui-1.10.2.custom.js"></script>
		<script src="${context}/resources/js/jquery.chained.js"></script>
		<script src="${context}/resources/js/jquery.droptabs.js"></script>
		<script src="${context}/resources/js/bootstrap-datepicker.js"></script>
		<script src="${context}/resources/bootstrap-v3.3.0/js/bootstrap.js"></script>
		<script src="${context}/resources/js/bootstrap-session-timeout.js"></script>
		<script src="${context}/js/home.js"></script>
		<script src="${context}/js/session.js"></script>
	    <title>Evaluate.Me</title>
	</head>
	<body>
		<t:topmenu/>
		<t:header/>
		<t:sessionModal/>
		<div class="container">
			<t:messages/>
			<d:body/>
		</div>
		<t:footer/>
	</body>
</html>
