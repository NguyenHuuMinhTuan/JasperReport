<header>
    <asset:stylesheet src="application.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</header>
<style>


/* Container chính */
.user-menu {
    margin-left: auto;
    position: relative;
    display: inline-block;
    cursor: pointer;
}

/* Tên người dùng */
.user-name {
    padding: 10px 15px;
    background-color: #f0f0f0;
    border-radius: 4px;
    border: 1px solid #ccc;
    font-size: 14px;
}

/* Menu đăng xuất (ẩn mặc định) */
.log-out {
    display: none;
    position: absolute;
    top: 100%; /* Hiển thị ngay bên dưới tên người dùng */
    right: 0;
    background-color: #fff;
    border: 1px solid #ccc;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 4px;
    z-index: 10;
    padding: 10px;
    min-width: 100px;
    text-align: center;
}

/* Link đăng xuất */
.log-out a {
    text-decoration: none;
    color: #333;
    font-size: 14px;
    padding: 5px 10px;
    display: block;
    border-radius: 4px;
}

.log-out a:hover {
    background-color: #f1f1f1;
}

/* Hiển thị menu khi hover */
.user-menu:hover .log-out {
    display: block;
}

</style>

<div class="header" style="display: flex">
    <a href="/">
        <p style="color: white">TRI ANH INTERN</p>
    </a>


    <g:if test="${session.username}">
        <div class="user-menu">
            <div class="user-name">Xin chào ,
                <strong> ${session.username}</strong>
               </div>
            <div class="log-out">
                <button class="btn btn-warning" id="btn-logOut">Đăng xuất </button>

            </div>
        </div>
    </g:if>
    <g:else>
        <div>
            <button class="btn btn-success">Đăng nhập</button>
        </div>
    </g:else>


</div>
<script>
    document.getElementById("btn-logOut").addEventListener("click", function (event) {
        event.preventDefault(); // Ngăn chặn hành động mặc định

        // Hiển thị hộp thoại xác nhận bằng SweetAlert2
        Swal.fire({
            title: "Bạn có chắc muốn đăng xuất?",
            text: "Bạn sẽ phải đăng nhập lại để sử dụng hệ thống!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#d33", // Màu nút xác nhận
            cancelButtonColor: "#3085d6", // Màu nút hủy
            confirmButtonText: "Đăng xuất",
            cancelButtonText: "Hủy"
        }).then((result) => {
            if (result.isConfirmed) {
                // Người dùng xác nhận đăng xuất, chuyển hướng tới action logout
                window.location.href = "${createLink(controller: 'authentication', action: 'logout')}";
            } else if (result.dismiss === Swal.DismissReason.cancel) {
                // Người dùng hủy bỏ đăng xuất
                Swal.fire({
                    title: "Đã hủy lệnh đăng xuất",
                    text: "Bạn vẫn đang duy trì đăng nhập!",
                    icon: "info",
                    timer: 3000, // Đếm ngược 3 giây
                    timerProgressBar: true, // Hiển thị thanh tiến trình
                    showConfirmButton: false
                });
            }
        });
    });
</script>

