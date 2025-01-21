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

    <div class="user-menu">
        <div class="user-name">MY HOME</div>
        <div class="log-out">
            <a href="/logout">Đăng xuất</a>
        </div>
    </div>

</div>
