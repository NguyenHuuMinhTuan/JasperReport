

    <div class=" bg-dark " style="color: whitesmoke; border-radius: 10px; border: white solid 1px">
        <div class="card-header d-block"style="text-align: center">
            <img src="https://th.bing.com/th/id/OIP.zK3-hNtHS9tYi2ykKyKEtwHaHx?rs=1&pid=ImgDetMain" alt="logo" width="50px">
            <h1>Mylove</h1>
            <p>Chào mừng bạn quay chở lại</p>
        </div>
        <ul class="list-group" style="list-style: none">
            <g:link controller="account" action="index">
                <li class="menu-item" style="font-size: 15px; margin: 20px">
                    <i class="fas fa-bell"></i>
                    POS Bán Hàng</li>
            </g:link>
            <g:link controller="account" action="create">
                <li class="menu-item" style="font-size: 15px; margin: 20px">
                    <i class="fa fa-desktop"></i>
                    Bảng điều khiển</li>
            </g:link>
            <g:link controller="employ" action="index">
                <li class="menu-item" style="font-size: 15px; margin: 20px">
                    <i class="fa fa-edit"></i>
                    Quản lý nhân viên
                </li>
            </g:link>

            <li class="menu-item" style="font-size: 15px; margin: 20px">
                <i class="fa fa-user"></i>
                Quản lý khách hàng</li>
            <li class="menu-item" style="font-size: 15px; margin: 20px">
                <i class="fas fa-shopping-cart"></i>
                Quản lý sản phẩm</li>
            <li class="menu-item" style="font-size: 15px; margin: 20px">
                <i class="fa fa-money-bill"></i>
                Quản lý đơn hàng</li>
            <li class="menu-item" style="font-size: 15px; margin: 20px">
                <i class="fas fa-cog"></i>
                Quản lý cục bộ</li>
        </ul>
    </div>
    <script>
        document.querySelectorAll('.menu-item').forEach(item => {
            item.addEventListener('click', function () {
                // Loại bỏ lớp 'active' khỏi tất cả các mục
                document.querySelectorAll('.menu-item').forEach(i => i.classList.remove('active'));
                // Thêm lớp 'active' cho mục được nhấn
                this.classList.add('active');
            });
        });

    </script>


