<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> --%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%--
  User: OCR
  Date: 11/10/14
  Time: 12:20 PM
--%>
<html lang="en">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<c:set var="context" value="${pageContext.request.contextPath}"/>
		<c:set var="url" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		<link href="${context}/resources/bootstrap-v3.3.0/css/bootstrap.css" rel="stylesheet"/>
	    <link href="${context}/resources/css/cops.styles.css" rel="stylesheet">
		<link href="${context}/resources/css/pace/pace-corner-red.css" rel="stylesheet">
		<link href="${context}/resources/css/global.css" rel="stylesheet">
		<link href="${context}/resources/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet">
		
	    <title>Evaluate.Me</title>
	</head>
	<body>
	<%-- <c:set var="url" value="${pageContext.request.requestURL}"/> --%>
	<%--     <c:if test="${not empty error.message }"> --%>
	<!--         <div id="warning" style="margin-left: 5px;"> -->
	<!--             <div class="row-fluid-fluid"> -->
	<%--                 <div class="${error.message_style} col-xs-11 col-sm-11 col-md-11" style="margin-bottom: 6px;"> --%>
	<!--                     <button type="button" class="close" data-dismiss="alert">&times;</button> -->
	<%--                     <strong>&nbsp;</strong>${error.message} --%>
	<!--                 </div> -->
	<!--             </div> -->
	<!--         </div> -->
	<%--     </c:if> --%>
<%-- 		<t:topmenu/> --%>
		<nav class="navbar navbar-default navbar-fixed-top" style="min-height: 20px;">
			<div class="navbar-inner">
				<div class="container">
		   			<a href="?lang=en" ><s:message code="login_label_en"/></a>
		       		|
		       		<a href="?lang=es" ><s:message code="login_label_es"/></a>
				</div>
			</div>
		</nav>
		<t:header/>
		<t:messages/>
	    <div class="container" style="margin-top:40px">
			<div class="row-fluid">
				<div class="col-xs-10 col-sm-8 col-md-6 col-xs-offset-1 col-sm-offset-2 col-md-offset-3">
					<div class="panel panel-default">
						<div class="panel-heading">
							<strong><s:message code="login_title_login"/></strong>
						</div>
						<div class="panel-body">
<%-- 				    		<c:if test="${'true' eq param.error}"> --%>
							<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
						        <div style="border: 1px solid #FF0000; background-color: #FFEEEE; color: #FF0000; padding: 5px; margin: 5px;">
<!-- 						                Login Failed!!!<br /> -->
<%-- 									<s:message code="AbstractUserDetailsAuthenticationProvider.badCredentials"/> --%>
					                Your login attempt was not successful, try again.
					                <br>
					                Reason : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
						         </div>
						    </c:if>
						    <div id="ssnValidation" class="alert alert-danger" style="display: none;">
						    	<s:message code="customer_label_ssn_validation"/>
						    </div>
			                <br>
			    			<form id="loginForm" method="post" action="<c:url value="/j_spring_security_check"/>">
								<div class="row-fluid">
									<div class="col-xs-12 col-sm-12 col-md-12">
								        <div class="form-group">
								        	<div class="input-group">
												<span class="input-group-addon">
													<i class="glyphicon glyphicon-user"></i>
												</span> 
							                    <input id="j_username" name="j_username" type="text" class="form-control" autocomplete="off" maxlength="20" 
	<%-- 							                           value="${login.userName}"  --%>
							                           placeholder="<s:message code="login_user_name"/>" autofocus="autofocus" />
								            </div>
							            </div>
							        </div>
						        </div>
						        <div class="row-fluid">
						        	<div class="col-xs-12 col-sm-12 col-md-12">
						            	<div class="form-group">
								            <div class="input-group">
								         		<span class="input-group-addon">
													<i class="glyphicon glyphicon-lock"></i>
												</span>
								            	<input id="j_password" name="j_password" type="password" class="form-control" autocomplete="off" maxlength="20" 
	<%-- 								                       value="${login.password}"  --%>
								                       placeholder="<s:message code="login_password"/>" />
								            </div>
							            </div>
							        </div>
								</div>
						        <div class="row-fluid">
							        <div class="col-xs-12 col-sm-12 col-md-12">
							        	<div class="form-group">
											<input type="submit" class="btn btn-lg btn-primary btn-block" onclick="login()" value="<s:message code="login_signin"/>">
										</div>
							        </div>
						        </div>
<!--   						        <div class="row-fluid"> -->
<!-- 							        <div class="col-xs-12 col-sm-12 col-md-12"> -->
<!-- 							        	<div class="form-group"> -->
<!-- 											<input id="trest" type="text" value="" onchange="actualValidate(trest.value)" > -->
<!-- 										</div> -->
<!-- 							        </div> -->
<!-- 						        </div> -->
		    				</form>
		    			</div>
		    		</div>
		    	</div>
		    </div>
	    </div>
		<t:footer/>
		<script src="${context}/resources/js/jquery.js"></script>
		<script src="${context}/resources/bootstrap-v3.3.0/js/bootstrap.js"></script>
		<script src="${context}/resources/js/pace.0.4.10.js"></script>
		<script src="${context}/js/utils.js"></script>
<%-- 		<script src="${context}/js/address.js"></script> --%>
		<script type="text/javascript">
			function login()
			{
				Pace.restart();
			}
		</script>
	</body>
</html>
