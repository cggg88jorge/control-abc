
<%@ page import="com.controlAbc.Site" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="entityName" value="${message(code: 'site.label', default: 'Site')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>	
		<div id="show-site" class="container" role="main">
			<h1>Sitio y su detalle</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<dl class="dl-horizontal">
				<dt>CR:</dt>
				<dd><g:fieldValue bean="${siteInstance}" field="cr"/></dd>
				<dt>Nombre:</dt>
				<dd><g:fieldValue bean="${siteInstance}" field="name"/></dd>	
			</dl>
			<g:if test="${siteInstance?.records}">
				<h3>Registros:</h3>
				<g:each in="${siteInstance.records}" var="r">
					<li>
						<span>
							<g:link controller="incidence" action="show" id="${r.id}">${r?.description}</g:link>
						</span>
						<span> - ${r.typeChange.code}</span>
					</li>
				</g:each>
			</g:if>	
			<g:form url="[resource:siteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-primary" action="edit" resource="${siteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
