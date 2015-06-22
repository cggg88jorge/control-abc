
<%@ page import="com.controlAbc.Site" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'site.label', default: 'Site')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-site" class="container" role="main">
			<h1>Lista de sitios</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
						<td>CR</td>
						<td>Nombre</td>
					</tr>
				</thead>
				<tbody>
				<g:each in="${siteInstanceList}" status="i" var="siteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${siteInstance.id}">${fieldValue(bean: siteInstance, field: "cr")}</g:link></td>
						<td>${fieldValue(bean: siteInstance, field: "name")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${siteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
