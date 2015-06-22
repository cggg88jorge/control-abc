<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="entityName" value="${message(code: 'site.label', default: 'Site')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-site" class="container" role="main">
			<div class="row">
				<div class="col-md-8">
					<h1>Agregar un nuevo sitio</h1>
					<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
					</g:if>
					<g:hasErrors bean="${siteInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${siteInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<g:form url="[resource:siteInstance, action:'save']" >
						<g:render template="form"/>
						<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>
