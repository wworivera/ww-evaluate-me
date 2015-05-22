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
		<t:mainmenu/>
		<div class="container">
		
 			<form:form id="form" method="GET" action="presentation"  enctype="application/json"> 
 				<div class="row">
 				<div class="col-xs-6 col-sm-6 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-1">
 					
 				 PAGINA PRINCIPAL<input type="submit" value = "Submit" /> 
 				</div>
 				<div>
 					<t:summary />
 				
 				</div>
				
 				 </div>
			
 				<div class="row">
 				
 					
 				</div> 
 				
			</form:form>
			
	<input type = "hidden" id="temp" value="${context}" />
		</div>
 		
 		
 		<script src="${context}/js/summary.js"></script>
 		<script src="${context}/js/feedback.js"></script>  
	</body>
</html>
