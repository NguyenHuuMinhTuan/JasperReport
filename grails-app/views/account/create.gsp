<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="main"/>


<div class="container-fluid">
    <p>Đây là trang create</p>
    <g:form controller="account" action="save" onsubmit="return validatePassword()">
        <g:render template="form"/>
        <g:submitButton class="btn btn-success" name="save" value="Save"/>
        <g:link controller="account" action="index" class="btn btn-warning"><g:message code="cancel"/> </g:link>
    </g:form>

</div>