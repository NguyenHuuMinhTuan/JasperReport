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
            <g:form controller="authentication">
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
