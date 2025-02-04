<meta name="layout" content="main"/>


<div class="container-fluid">
    <div class="card">
        <div class="card-header">

            <button class="btn btn-success " onclick="scrollHere(form_add)"><i class="icon bx bx-plus"></i>Tạo nhân viên mới</button>
            <button class="btn btn-warning "><i class="fa fa-file-upload"></i>Tải file</button>
            <button class="btn btn-primary "><i class="fa fa-print"></i>In dữ liệu</button>
            <button class="btn btn-primary "><i class="fa fa-copy">Sao chép</i></button>
            <button class="btn btn-success "><i class="fa fa-file-excel">Xuất file Excel</i></button>
            <button class="btn btn-danger "><i class="fa fa-file-pdf">Xuất file PDF</i></button>
            <button class="btn btn-dark "><i class="fa fa-trash">Xuất file Excel</i></button>
        </div>

        <div class="card-body">
            <div class="row">
                <div class="col-12" style="margin-left: 0;margin-right: 0">
                    <div class=" col-12 d-flex" >

                        <select class="form-control col-3" name="option" id="name">
                            <option value="name">50</option>
                            <option value="name">100</option>
                            <option value="name">200</option>
                        </select>

                        <div class="col-5 d-flex" style="margin-left: auto">
                            <input class="form-control" type="text" placeholder="tìm kiếm">
                            <button class="btn btn-warning">Search</button>
                        </div>

                    </div>
                    <div class="table-responsive mt-2">
                        <table class="table-bordered table">
                            <thead>
                            <tr>
                                <td><input type="checkbox"/></td>
                                <th>Mã nhân viên</th>
                                <th>Họ và tên</th>
                                <th>Ảnh thẻ</th>
                                <th width="300">Địa chỉ</th>
                                <th>Ngày sinh</th>
                                <th>Giới tính</th>
                                <th>SĐT</th>
                                <th>Chức vụ</th>
                                <th>Tính năng</th>
                            </tr>

                            </thead>
                            <tbody>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>22150192</td>
                                <td>Nguyễn Minh Huấn</td>
                                <td><img src="http://127.0.0.1:5502/img-anhthe/2.jpg" alt="ảnh thẻ" width="50px"></td>
                                <td>256 Dương Quảng Hàm, Phường 5, Quận Gò Vấp</td>
                                <td>12/04/1998</td>
                                <td>Nữ</td>
                                <td>0317845896</td>
                                <td>Quản lý</td>
                                <td class="d-flex">
                                    <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
                                    <button class="btn btn-warning"><i class="fa fa-edit"></i></button>
                                </td>
                            </tr>
                            </tbody>

                        </table>
                    </div>

                </div>

            </div>

        </div>

        <div class="card-footer" id="form_add">
            <h1>Thêm nhân viên mới</h1>
            <g:render template="form"/>
        </div>
    </div>

</div>
<script>
    function scrollHere(sectionId) {
        const form = document.getElementById("form_add")
        if(form){
            form.scrollIntoView({
                behavior:"smooth",
                block:"start"
                }

            )
        }

    }
</script>