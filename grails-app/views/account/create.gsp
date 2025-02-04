<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="main"/>


<div class="card">
    <div class="card-header">
        <h1>Đây là trang create</h1>
    </div>
  <div class="card-body">
      <g:form controller="account" action="save" onsubmit="return validatePassword()">
          <g:render template="form"/>
          <g:submitButton class="btn btn-success" name="save" value="Save"/>
          <g:link controller="account" action="index" class="btn btn-warning"><g:message code="cancel"/> </g:link>
      </g:form>
  </div>


</div>