<%@ page import="com.controlAbc.Record" %>



<div class="fieldcontain ${hasErrors(bean: recordInstance, field: 'applicant', 'error')} required">
	<label for="applicant">
		<g:message code="record.applicant.label" default="Applicant" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="applicant" required="" value="${recordInstance?.applicant}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordInstance, field: 'change', 'error')} required">
	<label for="change">
		<g:message code="record.change.label" default="Change" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="change" from="${com.controlAbc.TypeChange?.values()}" keys="${com.controlAbc.TypeChange.values()*.name()}" required="" value="${recordInstance?.change?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: recordInstance, field: 'dateOfCompletion', 'error')} required">
	<label for="dateOfCompletion">
		<g:message code="record.dateOfCompletion.label" default="Date Of Completion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfCompletion" precision="day"  value="${recordInstance?.dateOfCompletion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: recordInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="record.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${recordInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordInstance, field: 'executor', 'error')} required">
	<label for="executor">
		<g:message code="record.executor.label" default="Executor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="executor" required="" value="${recordInstance?.executor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: recordInstance, field: 'site', 'error')} required">
	<label for="site">
		<g:message code="record.site.label" default="Site" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="site" name="site.id" from="${com.controlAbc.Site.list()}" optionKey="id" required="" value="${recordInstance?.site?.id}" class="many-to-one"/>

</div>

