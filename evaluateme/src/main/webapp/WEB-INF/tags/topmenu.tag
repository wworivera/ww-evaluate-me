<%@ tag display-name="topmenu" description="Page Header" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  User: OCR
  Date: 11/10/14
  Time: 11:20 AM
--%>
<nav class="navbar navbar-default navbar-fixed-top" style="min-height: 20px;">
	<div class="navbar-inner">
		<div class="container">
			<a class="nav-signout" href="<c:url value='${context}/j_spring_security_logout'/>"><s:message code="menu_title_signout"/> <span class="glyphicon glyphicon-log-out icon-red"></span></a>
   			<a href="?lang=en" ><s:message code="login_label_en"/></a>
       		|
       		<a href="?lang=es" ><s:message code="login_label_es"/></a>
		</div>
	</div>
</nav>