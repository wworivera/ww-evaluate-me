<%@ tag display-name="mainmenu" description="Main Menu" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="url" value="${pageContext.request.requestURL}"/>

<nav class="navbar navbar-default navbar-static-top">
	<!-- Toggle get grouped for better mobile display -->
	<div class="navbar-header">
<%-- 		<c:if test="${not empty orderInfo}"> --%>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
<%-- 		</c:if> --%>
		<a class="navbar-brand" href="<c:url value="/admin"/>">Admin</a>
	</div>
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul id="mainMenu" class="nav navbar-nav">
<%-- 			<c:if test="${not empty orderInfo and (empty submitted or not submitted)}"> --%>
				<li id="errorsTab" class="${fn:contains(url, 'errors') ? 'active' : ''}">
					<a href="<c:url value="/errors"/>">Errors</a>
				</li>
				<li id="userTab" class="${fn:contains(url, 'user') ? 'active' : ''}">
					<a href="<c:url value="/user"/>" onclick="Pace.restart();" ><s:message code="menu_title_customer"/> User</a>
				</li>
<%-- 				<li id="productTab" class="${fn:contains(url, 'products') ? 'active' : ''}"> --%>
<%-- 					<a href="<c:url value="/products"/>"><s:message code="menu_title_products"/></a> --%>
<!-- 				</li> -->
<%-- 				<li id="notesTab" class="${fn:contains(url, 'notes') ? 'active' : ''}"> --%>
<%-- 					<a href="<c:url value="/notes"/>"><s:message code="menu_title_notes"/></a> --%>
<!-- 				</li> -->
<%-- 				<li id="paymentTab" class="${fn:contains(url, 'payment') ?'active':''}"> --%>
<%-- 					<a href="<c:url value="/payment"/>"><s:message code="menu_title_payment"/></a> --%>
<!-- 				</li> -->
<%-- 				<c:if test="${not empty paid and paid}"> --%>
<%-- 					<li id="summaryTab" class="${fn:contains(url, 'summary') ?'active':''}"> --%>
<%-- 						<a href="<c:url value="summary"/>"><s:message code="menu_title_summary"/></a> --%>
<!-- 					</li> -->
<%-- 				</c:if> --%>
<%-- 			</c:if> --%>
<%-- 			<c:if test="${not empty orderInformation}"> --%>
<%-- 				<li id="confirmationTab" class="${fn:contains(url, 'confirmation') ?'active':''}"> --%>
<%-- 					<a href="<c:url value="/confirmation"/>"><s:message code="menu_title_confirmation"/></a> --%>
<!-- 				</li> -->
<%-- 			</c:if> --%>
		</ul>
	</div>
</nav>
