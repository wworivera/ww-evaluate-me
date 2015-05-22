<%@ tag display-name="pagination" description="Pagination" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ attribute name="page" type="java.lang.Long" required="true" %>
<%@ attribute name="pageCount" type="java.lang.Long" required="true" %>
<%@ attribute name="url" type="java.lang.String" required="true" %>

<ul class="pagination">
	<li class="${page eq 0 ? 'disabled' : ''}"><a href="javascript:page('${url}', 1);"><span>&laquo;</span></a></li>
	<c:forEach var="i" begin="0" end="${pageCount - 1}">
		<li class="${page eq i ? 'active' : ''}"><a href="javascript:page('${url}', ${i + 1});"><span>${i + 1}</span></a></li>
	</c:forEach>
	<li class="${page eq (pageCount - 1) ? 'disabled' : ''}"><a href="javascript:page('${url}', ${pageCount});"><span>&raquo;</span></a></li>
</ul>