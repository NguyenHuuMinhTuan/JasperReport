<%@ page contentType="text/html;charset=UTF-8" %>
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        Đây là trang chi tiết Tài khoản
    </div>

    <div class="card-body">
        <g:if test="${member}">
            <table class="table table-bordered">
                <tr>
                    <th>Mã tài khoản</th>
                    <th>Tên tài khoản</th>
                    <th>Mật khẩu</th>
                    <th>Loại tài khoản</th>
                </tr>
                <tr>
                    <td>${member.id}</td>
                    <td>${member.username}</td>
                    <td>${member.password}</td>
                    <td>${member.type_account}</td>

                </tr>

            </table>
            <div class="container-fluid">
               <g:link controller="account" action="index" class="btn btn-warning">
                   <i class="fas fa-backward"></i>
               </g:link>

            </div>
        </g:if>
        <g:else>
            <p>Trang này đang rỗng</p>
        </g:else>
        <div class="form-action-panel">
            <g:link controller="account" action="index" class="btn-danger"/>

        </div>

    </div>

</div>