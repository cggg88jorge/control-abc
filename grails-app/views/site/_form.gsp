<%@ page import="com.controlAbc.Site" %>

<div class="form-group ${hasErrors(bean: siteInstance, field: 'cr', 'error')} required">
	<label for="cr">
		CR:
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="cr" required="" value="${siteInstance?.cr}"/>

</div>

<div class="form-group ${hasErrors(bean: siteInstance, field: 'name', 'error')} required">
	<label for="name">
		Nombre:
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="name" required="" value="${siteInstance?.name}"/>

</div>
