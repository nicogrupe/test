<%@ page import="projecttracker.EndUser" %>



<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="endUser.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" required="" value="${endUserInstance?.userName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="endUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${endUserInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="endUser.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" required="" value="${endUserInstance?.fullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'projects', 'error')} ">
	<label for="projects">
		<g:message code="endUser.projects.label" default="Projects" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${endUserInstance?.projects?}" var="p">
    <li><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="project" action="create" params="['endUser.id': endUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'project.label', default: 'Project')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: endUserInstance, field: 'tasks', 'error')} ">
	<label for="tasks">
		<g:message code="endUser.tasks.label" default="Tasks" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${endUserInstance?.tasks?}" var="t">
    <li><g:link controller="task" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="task" action="create" params="['endUser.id': endUserInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'task.label', default: 'Task')])}</g:link>
</li>
</ul>


</div>

