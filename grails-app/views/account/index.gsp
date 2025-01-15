<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <p>Trang quản lý tài khoản</p>
    </div>

    <div class="card-body">
        <table class="table-bordered table">
            <thead>
            <tr>
                <th>Mã TK</th>
                <th>Tên tài khoản</th>
                <th>Mật khẩu</th>
                <th>Email</th>
                <th>Loại TK</th>
                <th>Trạng thái</th>
            </tr>
            </thead>

            <tbody>
            <tr>
            <g:each in="${accountList}" var="info">
                <td>${info.id}</td>
                <td>${info.username}</td>
                <td>${info.password}</td>
                <td>${info.email}</td>
                <td>${info.type_account}</td>
                <td>

                    <div class="btn-group">

                        <g:link controller="account" action="details" id="${info.id}" class="btn btn-primary"><i
                                class="fas fa-eye"></i></g:link>

                        <g:link controller="account" action="edit" id="${info.id}" class="btn btn-warning"><i
                                class="fas fa-edit"></i></g:link>

                        <g:link controller="account" action="delete" id="${info.id}" class="btn btn-danger"><i
                                class="fas fa-trash"></i></g:link>

                    </div>
                </td>
                </tr>
            </g:each>

            </tbody>
        </table>
        <g:link controller="account" action="print" class="btn btn-success">
            <g:message message="Print report"/>
        </g:link>

        <div class="paginate">
            <g:paginate total="${total ?: 0}"/>
        </div>
    </div>
</div>