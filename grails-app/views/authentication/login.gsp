<header>
    <asset:stylesheet src="application.css"/>
</header>

<div class="container-fluid bg-secondary card-body" style="overflow: auto;height: auto;min-height: 100vh">
    <div class="container-fluid bg-white fa-swap-opacity mt-5 border-dark-1 shadow-lg"
         style="height: 70%; width: 70%; border-radius: 10px;">
        <div class="row" style="display: flex">
            <!-- Hình ảnh sẽ hiển thị trên mọi thiết bị -->
            <div class="col-lg-6 col-md-6 col-sm-0 mt-5" style="border-right: black solid 1px;">
                <img class="logo h-75 w-75 mt-5 d-none d-sm-block"
                     src="https://trianh.vn/wp-content/uploads/2023/05/logo-tri-anh-solution-1.png"
                     alt="logo" style="max-width: 100%; height: auto;">
            </div>

            <!-- Form đăng nhập sẽ chiếm 100% chiều rộng trên các thiết bị nhỏ -->
            <div class="col-lg-6 col-md-6 col-sm-12 mt-5">
                <g:form controller="authentication" action="doLogin" class="form-control border-0"
                        style="max-width: 400px; margin: auto;">
                    <h3 class="text-center mb-4"><b>Đăng Nhập</b></h3>

                    <!-- Input for Username -->
                    <div class="form-group mb-3">
                        <g:textField name="username" class="form-control" placeholder="Tên đăng nhập"
                                     required="required" style="padding: 10px; font-size: 16px;"/>
                    </div>

                    <!-- Input for Password -->
                    <div class="form-group mb-4">
                        <g:passwordField name="password" class="form-control" placeholder="Mật khẩu" required="required"
                                         style="padding: 10px; font-size: 16px;"/>
                    </div>

                    <!-- Submit buttons -->
                    <div class="d-grid gap-2 mb-3">
                        <g:submitButton class="btn btn-success btn-block" name="login" value="Đăng nhập"
                                        style="padding: 10px; font-size: 16px;"/>
                        <g:link controller="authentication" action="registration">
                            <p>Bạn chưa có tài khoản ?</p>
                        </g:link>
                    </div>

                    <!-- Forgot password link -->
                    <div class="text-center">
                        <g:link controller="authentication" action="register" class="text-decoration-none">
                            <p class="font-italic" style="color: black;">Quên mật khẩu?</p>
                        </g:link>
                    </div>
                </g:form>
            </div>
        </div>

        <!-- Improved Footer -->
    </div>

    <!-- Footer section with improved responsiveness -->
    <div class="card-footer bg-light text-dark mt-5 rounded shadow-sm p-3" style="width: 100%;">
        <p class="text-center mb-0" style="font-size: 14px;">
            Phần mềm quản lý bán hàng ©
            <script type="text/javascript">
                document.write(new Date().getFullYear());
            </script>
            - Nhóm Tri Anh Internship
        </p>
    </div>
</div>
