
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang Đăng ký tài khoản</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>

<body>
<div class="container" style="margin: 40px auto">
    <div class="row align-items-center">
        <!-- Cột chứa ảnh -->
        <div class="col-md-6 text-center">
            <img src="https://static.vecteezy.com/system/resources/previews/003/689/228/original/online-registration-or-sign-up-login-for-account-on-smartphone-app-user-interface-with-secure-password-mobile-application-for-ui-web-banner-access-cartoon-people-illustration-vector.jpg"
                 alt="Hình ảnh đăng ký tài khoản" class="img-fluid" style="mix-blend-mode: darken;">
        </div>
        <!-- Cột chứa form -->
        <div class="col-md-6">
            <h2 class="text-center mb-4">Đăng ký tài khoản</h2>
            <g:form controller="authentication" action="save">
                <div class="mb-3">
                    <g:textField name="username" placeholder="Tên tài khoản" class="form-control"/>
                </div>
                <div class="mb-3">
                    <g:passwordField name="password" placeholder="Mật khẩu" class="form-control"/>
                </div>
                <div class="mb-3">
                    <g:passwordField name="confirm" placeholder="Xác nhận mật khẩu" class="form-control"/>
                </div>
                <div class="mb-3">
                    <g:textField name="email" placeholder="Email" class="form-control"/>
                </div>
                <div class="mb-3">
                    <g:textField name="type_account" placeholder="Loại tài khoản" value="false" readonly="true" class="form-control"/>
                </div>
                <div class="d-grid gap-2">
                    <g:submitButton name="register" value="Đăng ký" class="btn btn-primary"/>
                </div>
                <div class="text-center mt-3">
                    <g:link controller="authentication" action="login" class="btn btn-link">Trở lại trang đăng nhập</g:link>
                </div>
            </g:form>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
    $(document).ready(function () {
        $("form").submit(function (event) {
            event.preventDefault(); // Ngăn form submit mặc định

            let username = $("input[name='username']").val().trim();
            let password = $("input[name='password']").val().trim();
            let confirm = $("input[name='confirm']").val().trim();
            let email = $("input[name='email']").val().trim();

            // Kiểm tra rỗng
            if (username === "" || password === "" || confirm === "" || email === "") {
                Swal.fire({
                    icon: 'error',
                    title: 'Lỗi!',
                    text: 'Không được để trống bất kỳ trường nào.',
                });
                return;
            }

            // Kiểm tra mật khẩu xác nhận
            if (password !== confirm) {
                Swal.fire({
                    icon: 'error',
                    title: 'Lỗi!',
                    text: 'Mật khẩu xác nhận không khớp.',
                });
                return;
            }

            // Kiểm tra định dạng email
            let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(email)) {
                Swal.fire({
                    icon: 'error',
                    title: 'Lỗi!',
                    text: 'Email không hợp lệ.',
                });
                return;
            }

            // Kiểm tra email đã tồn tại hay chưa bằng Ajax
            $.ajax({
                url: "/authentication/checkEmail", // API kiểm tra email trong MariaDB
                type: "POST",
                data: {email: email},
                success: function (response) {
                    if (response.exists) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Lỗi!',
                            text: 'Email này đã tồn tại.',
                        });
                    } else {
                        Swal.fire({
                            icon: 'success',
                            title: 'Thành công!',
                            text: 'Bạn đã đăng ký thành công!',
                        }).then(() => {
                            $("form")[0].submit(); // Nếu hợp lệ, submit form
                        });
                    }
                },
                error: function () {
                    Swal.fire({
                        icon: 'error',
                        title: 'Lỗi!',
                        text: 'Đã có lỗi xảy ra, vui lòng thử lại sau.',
                    });
                }
            });
        });
    });
</script>

</body>
</html>
