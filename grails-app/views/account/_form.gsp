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

        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;

        // Kiểm tra mật khẩu có khớp không
        if (password !== confirmPassword) {
            alert("Password and Confirm Password do not match!");
            return false; // Ngăn không cho gửi form
        }
        Swal.fire({
            title: "Thêm tài khoản thành công!",
            text: "Tạo thành công",
            icon: "success",
            timer: 2000, // Đếm ngược 5 giây
            timerProgressBar: true, // Hiển thị thanh tiến trình
            showConfirmButton: false
        });
        return true;
    }
</script>