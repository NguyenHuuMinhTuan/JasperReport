<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header d-flex">
        <g:link action="create" controller="account" class="ml-auto">
            <button class="btn btn-success ml-auto">
                <i class="fas fa-plus"></i>
                Add Account</button>
        </g:link>
    <!-- Add Export Excel Button -->
        <button id="exportExcelButton" class="btn btn-success ml-2">
            <i class="fas fa-upload"></i>
            Xuất Excel</button>

        <g:link controller="account" action="print" class="btn btn-success ml-2">
            <i class="fas fa-print"></i>
            <g:message message="Print report"/>
        </g:link>
    </div>


    <div class="card-body">
        <div class="table-responsive">
            <table class="table-bordered table" id="accountTable">
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
                            <g:link controller="account" action="details" id="${info.id}" class="btn btn-primary"><i class="fas fa-eye"></i></g:link>
                            <g:link controller="account" action="edit" id="${info.id}" class="btn btn-warning"><i class="fas fa-edit"></i></g:link>
                            <g:link controller="account" action="delete" id="${info.id}" class="btn btn-danger"><i class="fas fa-trash"></i></g:link>
                        </div>
                    </td>
                    </tr>
                </g:each>

                </tbody>
            </table>
        </div>



        <div class="paginate" style="margin-top: 40px">
            <g:paginate class="pagination" total="${total ?: 0}"/>
        </div>
    </div>

</div>

<!-- Include the xlsx library -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.0/xlsx.full.min.js"></script>

<script>
    // Export to Excel function
    function exportTableToExcel(tableID, filename = 'table_data.xlsx') {
        var wb = XLSX.utils.table_to_book(document.getElementById(tableID), {sheet: "Sheet1"});
        XLSX.writeFile(wb, filename);
    }

    // Attach event listener to the export button
    document.getElementById('exportExcelButton').addEventListener('click', function() {
        exportTableToExcel('accountTable');
    });
</script>
