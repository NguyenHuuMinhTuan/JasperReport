<meta name="layout" content="main"/>

<div class="container-fluid">
    <div class="row">
        <div class="col-8 bg-white">
            <h1 style="border-bottom: yellow solid 2px; font-weight: bold ">Phần mềm bán hàng</h1>
            <input class="form-control mt-2 mb-2" type="text" placeholder="Tìm kiếm tên sản phẩm">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Mã hàng</th>
                    <th>Tên sản phẩm</th>
                    <th>Hình ảnh</th>
                    <th>Số lượng</th>
                    <th>Giá bán</th>
                    <th></th>

                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>038444545</td>
                    <td>Bàn ăn gỗ thesarest</td>
                    <td><img src="https://cf.shopee.vn/file/4a88ff2753b57bb06df42abef91641fb" alt="hình ảnh minh họa"
                             width="50px"></td>
                    <td>12</td>
                    <td>56.000 VNĐ</td>
                    <td><button class="btn btn-danger"><i class="fa fa-trash"></i></button></td>
                </tr>
                <tr>
                    <td>038444545</td>
                    <td>Bàn ăn gỗ thesarest</td>
                    <td><img src="https://cf.shopee.vn/file/4a88ff2753b57bb06df42abef91641fb" alt="hình ảnh minh họa"
                             width="50px"></td>
                    <td>12</td>
                    <td>56.000 VNĐ</td>
                    <td><button class="btn btn-danger"><i class="fa fa-trash"></i></button></td>
                </tr>
                <tr>
                    <td>038444545</td>
                    <td>Bàn ăn gỗ thesarest</td>
                    <td><img src="https://cf.shopee.vn/file/4a88ff2753b57bb06df42abef91641fb" alt="hình ảnh minh họa"
                             width="50px"></td>
                    <td>12</td>
                    <td>56.000 VNĐ</td>
                    <td><button class="btn btn-danger"><i class="fa fa-trash"></i></button></td>
                </tr>
                <tr>
                    <td>038444545</td>
                    <td>Bàn ăn gỗ thesarest</td>
                    <td><img src="https://cf.shopee.vn/file/4a88ff2753b57bb06df42abef91641fb" alt="hình ảnh minh họa"
                             width="50px"></td>
                    <td>12</td>
                    <td>56.000 VNĐ</td>
                    <td><button class="btn btn-danger"><i class="fa fa-trash"></i></button></td>
                </tr>
                <tr>
                    <td>038444545</td>
                    <td>Bàn ăn gỗ thesarest</td>
                    <td><img src="https://cf.shopee.vn/file/4a88ff2753b57bb06df42abef91641fb" alt="hình ảnh minh họa"
                             width="50px"></td>
                    <td>12</td>
                    <td>56.000 VNĐ</td>
                    <td><button class="btn btn-danger"><i class="fa fa-trash"></i></button></td>
                </tr>
                </tbody>

            </table>

            <div class="col-12 d-flex"
                 style="
                 height: 40px;
                 background-color: #24ff56;
                 border-radius: 10px;
                 text-align: center;
                 justify-content: center">
                <i class="fa fa-warning mt-1"></i>

                <p style="font-family: Sarabun">Gõ mã hoặc tên sản phẩm vào thanh tìm kiếm để thêm hàng vào đơn hàng</p>
            </div>
        </div>

        <div class="col-4 bg-white" style="border-left: black dashed 2px">
            <h1 style="border-bottom: yellow solid 2px; font-weight: bold ">Phần mềm bán hàng</h1>

            <div class="row" style="border-bottom: black solid 1px">
                <div class="col-12">
                    <div class="form-group" style="font-family: Sarabun">
                        <label class="form-label" for="username" style="font-family: Sarabun;font-weight: bold">
                            Họ và tên khách hàng
                        </label>
                        <input class="form-control" type="text" id="username" placeholder="Họ và tên khách hàng">

                        <p style="font-family: Sarabun;font-weight: bold">Nhân viên bán hàng</p>

                        <select class="form-control">
                            <option>-----Nhân viên bán hàng -----</option>
                            <option>Nguyen Khánh Duy</option>
                            <option>Bùi Trọng Khang</option>
                            <option>Lê Thanh Phong</option>
                            <option>Nguyễn Minh Tuấn</option>
                        </select>
                        <label style="font-weight: bold; font-family: Sarabun" for="note">Ghi chú đơn hàng</label>
                        <input id="note" class="form-control" type="text" placeholder="Ghi chú đơn hàng"
                        >

                        <p style="font-family: Sarabun; font-weight: bold">Phương thức thanh toán</p>
                        <select class="form-control">
                            <option>---Phương thức thanh toán----</option>
                            <option>Thanh toán chuyển khoản</option>
                            <option>Thanh toán trả góp</option>
                        </select>

                    </div>

                </div>

            </div>

            <div class="row" style="border-bottom: black solid 1px">
                <div class="col-12">
                    <p>Tạm tính : 123.400.000 VNĐ</p>

                    <p>Đã giảm : 0%</p>

                    <p>Tổng thanh toán : 123.400.000VNĐ</p>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <button class="btn btn-primary m-2">Thanh toán (F9)</button>

                    <button class="btn btn-warning m-2">In và lưu hóa đơn (F11)</button>

                </div>
            </div>
        </div>
    </div>

</div>