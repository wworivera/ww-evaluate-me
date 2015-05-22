<%@ tag description="Session Modal Panel" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--
  User: OCR
  Date: 11/18/14
  Time: 11:10 AM
--%>
<div id="sessionTimeout-dialog" class="modal fade" data-backdrop="static" tabindex="-1">
	<div class="modal-dialog">
	  <div class="modal-content">
	    <div class="modal-header">
	      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	      <h4 class="modal-title"><s:message code="session_title"/></h4>
	    </div>
	    <div class="modal-body"><s:message code="session_title_description"/></div>
	    <div class="modal-footer">
	      <button id="sessionTimeout-dialog-logout" type="button" class="btn btn-default" onclick="<c:url value='${context}/login'/>"><s:message code="menu_title_signout"/></button>
	      <button id="sessionTimeout-dialog-keepalive" type="button" class="btn btn-primary" data-dismiss="modal"><s:message code="session_label_keep_alive"/></button>
	    </div>
	  </div>
	</div>
</div>