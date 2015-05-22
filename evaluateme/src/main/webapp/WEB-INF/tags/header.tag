<%@ tag display-name="header" description="Page Header" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  User: OCR
  Date: 11/10/14
  Time: 11:20 AM
--%>
<header class="page-header header-gradient ">
	<div class="container">
		<div class="col-xs-2 col-sm-2 col-md-1"><img src="<c:url value="${context}/resources/images/claroLogo2.png"/>" height="64px" width="64px"></div>
		<div class="col-xs-10 col-sm-10 col-md-11">
			<h2 style="margin-top: 0px;"><s:message code="header_title"/></h2>
			<h5><s:message code="header_description"/></h5>
			<input type='hidden' id="lang" name="lang" value="${lang}" />
		</div>
	</div>
</header>
