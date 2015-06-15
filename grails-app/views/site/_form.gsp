<%@ page import="com.controlAbc.Site" %>



<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'cr', 'error')} required">
	<label for="cr">
		<g:message code="site.cr.label" default="Cr" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cr" required="" value="${siteInstance?.cr}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="site.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${siteInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'records', 'error')} ">
	<label for="records">
		<g:message code="site.records.label" default="Records" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${siteInstance?.records?}" var="r">
    <li><g:link controller="record" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="record" action="create" params="['site.id': siteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'record.label', default: 'Record')])}</g:link>
</li>
</ul>


</div>

