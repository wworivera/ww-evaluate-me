<%@ tag display-name="messages" description="Messages" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:if test="${not empty errorCodes}"> 
	<c:forEach var="errorCode" items="${errorCodes}">
		<div class="alert alert-${errorCode.style} alert-dismissable">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
			<strong>${errorCode.name}<c:if test="${not empty errorCode.source}"> - ${errorCode.source}</c:if></strong>
			<div>${errorCode.description}</div>
		</div>
	</c:forEach>
</c:if>