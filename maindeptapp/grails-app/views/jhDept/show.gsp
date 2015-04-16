
<%@ page import="com.imperial.icbanner.domains.JhDept" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jhDept.label', default: 'JhDept')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-jhDept" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-jhDept" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list jhDept">
			
				<g:if test="${jhDeptInstance?.dname}">
				<li class="fieldcontain">
					<span id="dname-label" class="property-label"><g:message code="jhDept.dname.label" default="Dname" /></span>
					
						<span class="property-value" aria-labelledby="dname-label"><g:fieldValue bean="${jhDeptInstance}" field="dname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jhDeptInstance?.loc}">
				<li class="fieldcontain">
					<span id="loc-label" class="property-label"><g:message code="jhDept.loc.label" default="Loc" /></span>
					
						<span class="property-value" aria-labelledby="loc-label"><g:fieldValue bean="${jhDeptInstance}" field="loc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jhDeptInstance?.deptno}">
				<li class="fieldcontain">
					<span id="deptno-label" class="property-label"><g:message code="jhDept.deptno.label" default="Deptno" /></span>
					
						<span class="property-value" aria-labelledby="deptno-label"><g:fieldValue bean="${jhDeptInstance}" field="deptno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jhDeptInstance?.jhdept_id}">
				<li class="fieldcontain">
					<span id="jhdept_id-label" class="property-label"><g:message code="jhDept.jhdept_id.label" default="Jhdeptid" /></span>
					
						<span class="property-value" aria-labelledby="jhdept_id-label"><g:fieldValue bean="${jhDeptInstance}" field="jhdept_id"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:jhDeptInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${jhDeptInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
