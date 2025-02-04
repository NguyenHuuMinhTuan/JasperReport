<header>
    <asset:stylesheet src="application.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</header>
<div class="container-fluid d-lg-block">

    <div class="form-group">
        <g:message message="Username"/>
        <g:textField name="username" class="form-control" value="${account?.username}" placeholder="Username"/>
    </div>

    <div class="form-group">
        <label for="password" class="label">Password</label>
        <g:passwordField name="password" id="password" class="form-control" value="${account?.password}"
                         placeholder="Password"/>
    </div>

    <div class="form-group">
        <label for="confirmPassword" class="label">Confirm Password</label>
        <g:passwordField name="confirmPassword" id="confirmPassword" class="form-control"
                         placeholder="Confirm Password"/>
    </div>

    <div class="form-group">
        <label for="email" class="label">Email</label>
        <g:textField type="email" name="email" class="form-control" value="${account?.email}" placeholder="Email"/>
    </div>

    <div class="form-group">
    %{--@declare id="type_account"--}%<label for="type_account" class="label">Type Account</label>
        <g:textField type="number" name="type_account" class="form-control" value="${account?.type_account}"
                     placeholder="Type Account"/>
    </div>

</div>
<script>
    function validatePassword() {
        var username = document.getElementsByName("username")[0].value.trim();
        var password = document.getElementById("password").value.trim();
        var confirmPassword = document.getElementById("confirmPassword").value.trim();
        var email = document.getElementsByName("email")[0].value.trim();
        var typeAccount = document.getElementsByName("type_account")[0].value.trim();

        // Kiểm tra nếu có bất kỳ trường nào bị trống
        if (!username || !password || !confirmPassword || !email || !typeAccount) {
            Swal.fire({
                title: "Cảnh báo!",
                text: "Không được để trống bất kỳ trường nào!",
                icon: "warning",
                timer: 3000,  // Hiển thị trong 3 giây
                timerProgressBar: true,
                showConfirmButton: false
            });
            return false;
        }

        // Kiểm tra mật khẩu có khớp không
        if (password !== confirmPassword) {
            Swal.fire({
                title: "Lỗi!",
                text: "Password và Confirm Password không khớp!",
                icon: "error",
                timer: 3000,
                timerProgressBar: true,
                showConfirmButton: false
            });
            return false;
        }

        // Hiển thị thông báo thành công nếu không có lỗi
        Swal.fire({
            title: "Thành công!",
            text: "Thêm tài khoản thành công!",
            icon: "success",
            timer: 5000,
            timerProgressBar: true,
            showConfirmButton: false
        });

        return true;
    }
</script>
