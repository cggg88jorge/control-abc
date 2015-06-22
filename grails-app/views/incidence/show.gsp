<%@ page import="com.controlAbc.Incidence" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'incidence.label', default: 'Incidence')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-incidence" class="container" role="main">
			<h1>Detalle de registro</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<dl class="dl-horizontal">
				<dt>Descripcion:</dt>
				<dd><g:fieldValue bean="${incidenceInstance}" field="description"/></dd>
				<dt>Ejecuto:</dt>
				<dd><g:fieldValue bean="${incidenceInstance}" field="executor"/></dd>
				<dt>Fecha de termino:</dt>
				<dd><g:fieldValue bean="${incidenceInstance}" field="finishedDate"/></dd>
				<dt>Solicito:</dt>
				<dd><g:fieldValue bean="${incidenceInstance}" field="requested"/></dd>
				<dt>Sitio:</dt>
				<dd><g:link controller="site" action="show" id="${incidenceInstance?.site?.id}">${incidenceInstance?.site?.name?.encodeAsHTML()}</g:link></dd>
				<dt>Tipo de registro:</dt>
				<dd><g:fieldValue bean="${incidenceInstance}" field="typeChange.code"/></dd>
			</dl>
			<g:form url="[resource:incidenceInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${incidenceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
