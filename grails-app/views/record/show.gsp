
<%@ page import="com.controlAbc.Record" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'record.label', default: 'Record')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-record" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-record" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list record">
			
				<g:if test="${recordInstance?.applicant}">
				<li class="fieldcontain">
					<span id="applicant-label" class="property-label"><g:message code="record.applicant.label" default="Applicant" /></span>
					
						<span class="property-value" aria-labelledby="applicant-label"><g:fieldValue bean="${recordInstance}" field="applicant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordInstance?.change}">
				<li class="fieldcontain">
					<span id="change-label" class="property-label"><g:message code="record.change.label" default="Change" /></span>
					
						<span class="property-value" aria-labelledby="change-label"><g:fieldValue bean="${recordInstance}" field="change"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordInstance?.dateOfCompletion}">
				<li class="fieldcontain">
					<span id="dateOfCompletion-label" class="property-label"><g:message code="record.dateOfCompletion.label" default="Date Of Completion" /></span>
					
						<span class="property-value" aria-labelledby="dateOfCompletion-label"><g:formatDate date="${recordInstance?.dateOfCompletion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="record.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${recordInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordInstance?.executor}">
				<li class="fieldcontain">
					<span id="executor-label" class="property-label"><g:message code="record.executor.label" default="Executor" /></span>
					
						<span class="property-value" aria-labelledby="executor-label"><g:fieldValue bean="${recordInstance}" field="executor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${recordInstance?.site}">
				<li class="fieldcontain">
					<span id="site-label" class="property-label"><g:message code="record.site.label" default="Site" /></span>
					
						<span class="property-value" aria-labelledby="site-label"><g:link controller="site" action="show" id="${recordInstance?.site?.id}">${recordInstance?.site?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:recordInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${recordInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
