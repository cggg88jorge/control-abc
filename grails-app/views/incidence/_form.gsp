<%@ page import="com.controlAbc.Incidence" %>
<div class="form-group ${hasErrors(bean: incidenceInstance, field: 'description', 'error')} required">
	<label for="description">
		Descripcion:
		<span class="required-indicator">*</span>
	</label>
	<g:textArea class="form-control" name="description" cols="40" rows="5" maxlength="1000" required="" value="${incidenceInstance?.description}"/>

</div>

<div class="form-group ${hasErrors(bean: incidenceInstance, field: 'executor', 'error')} required">
	<label for="executor">
		Ejecuto:
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="executor" required="" value="${incidenceInstance?.executor}"/>

</div>

<div class="form-group ${hasErrors(bean: incidenceInstance, field: 'finishedDate', 'error')} required">
	<label for="finishedDate">
		Fecha de termino:
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="finishedDate" precision="day"  value="${incidenceInstance?.finishedDate}"  />

</div>

<div class="form-group ${hasErrors(bean: incidenceInstance, field: 'requested', 'error')} required">
	<label for="requested">
		Solicito:
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="requested" required="" value="${incidenceInstance?.requested}"/>

</div>

<div class="form-group ${hasErrors(bean: incidenceInstance, field: 'site', 'error')} required">
	<label for="site">
		Sitio al que pertence:
		<span class="required-indicator">*</span>
	</label>
	<g:select id="site" name="site.id" from="${com.controlAbc.Site.list()}" optionKey="id" optionValue="name" required="" value="${incidenceInstance?.site?.id}" class="many-to-one"/>

</div>

<div class="form-group ${hasErrors(bean: incidenceInstance, field: 'typeChange', 'error')} required">
	<label for="typeChange">
		Tipo de registro
		<span class="required-indicator">*</span>
	</label>
	<g:select optionValue="code" name="typeChange" from="${com.controlAbc.TypeChange?.values()}" keys="${com.controlAbc.TypeChange.values()*.name()}" required="" value="${incidenceInstance?.typeChange?.name()}" />

</div>

