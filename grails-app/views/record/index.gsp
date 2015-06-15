
<%@ page import="com.controlAbc.Record" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'record.label', default: 'Record')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-record" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-record" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="applicant" title="${message(code: 'record.applicant.label', default: 'Applicant')}" />
					
						<g:sortableColumn property="change" title="${message(code: 'record.change.label', default: 'Change')}" />
					
						<g:sortableColumn property="dateOfCompletion" title="${message(code: 'record.dateOfCompletion.label', default: 'Date Of Completion')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'record.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="executor" title="${message(code: 'record.executor.label', default: 'Executor')}" />
					
						<th><g:message code="record.site.label" default="Site" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recordInstanceList}" status="i" var="recordInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recordInstance.id}">${fieldValue(bean: recordInstance, field: "applicant")}</g:link></td>
					
						<td>${fieldValue(bean: recordInstance, field: "change")}</td>
					
						<td><g:formatDate date="${recordInstance.dateOfCompletion}" /></td>
					
						<td>${fieldValue(bean: recordInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: recordInstance, field: "executor")}</td>
					
						<td>${fieldValue(bean: recordInstance, field: "site")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recordInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
