<%@ page import="com.imperial.icbanner.domains.JhDept" %>



<div class="fieldcontain ${hasErrors(bean: jhDeptInstance, field: 'dname', 'error')} required">
	<label for="dname">
		<g:message code="jhDept.dname.label" default="Dname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dname" maxlength="50" required="" value="${jhDeptInstance?.dname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jhDeptInstance, field: 'loc', 'error')} required">
	<label for="loc">
		<g:message code="jhDept.loc.label" default="Loc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loc" maxlength="30" required="" value="${jhDeptInstance?.loc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jhDeptInstance, field: 'deptno', 'error')} required">
	<label for="deptno">
		<g:message code="jhDept.deptno.label" default="Deptno" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="deptno" type="number" value="${jhDeptInstance.deptno}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: jhDeptInstance, field: 'jhdept_id', 'error')} required">
	<label for="jhdept_id">
		<g:message code="jhDept.jhdept_id.label" default="Jhdeptid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="jhdept_id" type="number" value="${jhDeptInstance.jhdept_id}" required=""/>

</div>

