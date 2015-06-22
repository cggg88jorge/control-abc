
<%@ page import="com.controlAbc.Incidence" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'incidence.label', default: 'Incidence')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-incidence" class="container" role="main">
			<h1>Lista de las incidencias</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
						<g:sortableColumn property="description" title="Descripción" />
						<g:sortableColumn property="executor" title="Ejecuto" />
						<g:sortableColumn property="finishedDate" title="Fecha de termino" />
						<g:sortableColumn property="requested" title="Solicito" />
						<th>Sitio</th>
						<g:sortableColumn property="typeChange" title="Tipo de registro" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${incidenceInstanceList}" status="i" var="incidenceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${incidenceInstance.id}">${fieldValue(bean: incidenceInstance, field: "description")}</g:link></td>
						<td>${fieldValue(bean: incidenceInstance, field: "executor")}</td>
						<td><g:formatDate date="${incidenceInstance.finishedDate}" format="dd-MM-yyyy"/></td>
						<td>${fieldValue(bean: incidenceInstance, field: "requested")}</td>
						<td>${fieldValue(bean: incidenceInstance, field: "site.name")}</td>
						<td>${fieldValue(bean: incidenceInstance, field: "typeChange.code")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${incidenceInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
