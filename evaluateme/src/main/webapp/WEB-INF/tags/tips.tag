<%@ tag display-name="footer" description="Page Footer" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ attribute name="tips" type="String[]" required="true" %>

<div class="panel panel-primary">
	<div class="panel-heading"><h3 class="panel-title"><strong><s:message code="tips_title"/></strong></h3></div>
	<ul class="list-group">
		<c:forEach items="${tips}" var="tip">
			<li class="list-group-item">
				<span class="content-information"><s:message code="${tip}"/></span>
			</li>
		</c:forEach>
	</ul>
</div>