<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="main"/>
<div class="card">
    <div class="card-header">
        <g:message message="Đây là trang cập nhật"/>
    </div>
    <div class="card-body">
        <g:form controller="account" action="update">
            <g:hiddenField name="id" value="${account?.id?:''}"/>
            <g:render template="form" model="[edit:'yes']"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "update")}"/>
                <g:link controller="account" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>

    </div>

</div>