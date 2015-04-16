
<%@ page import="com.imperial.icbanner.domains.JhDept" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jhDept.label', default: 'JhDept')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-jhDept" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-jhDept" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="dname" title="${message(code: 'jhDept.dname.label', default: 'Dname')}" />
					
						<g:sortableColumn property="loc" title="${message(code: 'jhDept.loc.label', default: 'Loc')}" />
					
						<g:sortableColumn property="deptno" title="${message(code: 'jhDept.deptno.label', default: 'Deptno')}" />
					
						<g:sortableColumn property="jhdept_id" title="${message(code: 'jhDept.jhdept_id.label', default: 'Jhdeptid')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${jhDeptInstanceList}" status="i" var="jhDeptInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${jhDeptInstance.id}">${fieldValue(bean: jhDeptInstance, field: "dname")}</g:link></td>
					
						<td>${fieldValue(bean: jhDeptInstance, field: "loc")}</td>
					
						<td>${fieldValue(bean: jhDeptInstance, field: "deptno")}</td>
					
						<td>${fieldValue(bean: jhDeptInstance, field: "jhdept_id")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${jhDeptInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
