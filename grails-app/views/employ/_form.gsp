
<div class="container mt-5">
    <div class="card shadow">
        <div class="card-header bg-primary text-white text-center">
            <h4>Thêm Nhân Viên</h4>
        </div>
        <div class="card-body">
            <form>
                <div class="form-row">
                    <!-- Trường CCCD -->
                    <div class="form-group col-md-6">
                        <label for="CCCD">CCCD</label>
                        <input type="text" class="form-control" id="CCCD" placeholder="Nhập CCCD" name="CCCD">
                    </div>
                    <!-- Trường Họ và Tên -->
                    <div class="form-group col-md-6">
                        <label for="name">Họ và Tên</label>
                        <input type="text" class="form-control" id="name" placeholder="Nhập họ và tên" name="name">
                    </div>
                </div>

                <div class="form-row">
                    <!-- Trường Ngày sinh -->
                    <div class="form-group col-md-6">
                        <label for="date">Ngày Sinh</label>
                        <input type="date" class="form-control" id="date" name="date">
                    </div>
                    <!-- Trường Giới tính -->
                    <div class="form-group col-md-6">
                        <label for="gender">Giới Tính</label>
                        <select id="gender" class="form-control" name="gender">
                            <option value="male">Nam</option>
                            <option value="female">Nữ</option>
                            <option value="other">Khác</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <!-- Trường Địa chỉ -->
                    <label for="address">Địa Chỉ</label>
                    <textarea class="form-control" id="address" rows="3" placeholder="Nhập địa chỉ" name="address"></textarea>
                </div>

                <div class="form-group text-center">
                    <!-- Nút thêm nhân viên -->
                    <button type="submit" class="btn btn-success btn-lg">Thêm Nhân Viên</button>
                </div>
            </form>
        </div>
    </div>
</div>