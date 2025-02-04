
<div class="bg-dark" style="color: black; border-radius: 10px; border: white solid 1px">
    <div class="card-header d-block bg-white" style="text-align: center">
        <img src="https://th.bing.com/th/id/OIP.zK3-hNtHS9tYi2ykKyKEtwHaHx?rs=1&pid=ImgDetMain" alt="logo" width="50px">

        <g:if test="${session.username}">
            <br/>
            <strong>${session.username}</strong>
        </g:if>
        <g:else>
            <strong>Unknown</strong>
        </g:else>

        <p>Chào mừng bạn quay chở lại</p>
    </div>

    <ul class="list-group" style="list-style: none">
        <!-- Thẻ div bao quanh g:link -->

            <g:link controller="prod" action="index">
                <li class="menu-item" style="font-size: 15px; margin: 20px">
                    <i class="fa fa-desktop"></i>
                    Bảng điều khiển
                </li>
            </g:link>



            <g:link controller="employ" action="index">
                <li class="menu-item" style="font-size: 15px; margin: 20px">
                    <i class="fa fa-edit"></i>
                    Quản lý nhân viên
                </li>
            </g:link>



            <g:link controller="account" action="index">
                <li  class="menu-item" style="font-size: 15px; margin: 20px">
                    <i class="fa fa-user"></i>
                    Quản lý khách hàng
                </li>
            </g:link>


        <div class="menu-item">
            <li style="font-size: 15px; margin: 20px">
                <i class="fas fa-shopping-cart"></i>
                Quản lý sản phẩm
            </li>
        </div>

        <div class="menu-item">
            <li style="font-size: 15px; margin: 20px">
                <i class="fa fa-money-bill"></i>
                Quản lý đơn hàng
            </li>
        </div>

        <div class="menu-item">
            <li style="font-size: 15px; margin: 20px">
                <i class="fas fa-cog"></i>
                Quản lý cục bộ
            </li>
        </div>
    </ul>
</div>

<script>
    // Tìm tất cả các div có class menu-item và thêm sự kiện click
    document.querySelectorAll('.menu-item').forEach(item => {
        item.addEventListener('click', function () {
            // Loại bỏ lớp 'active' khỏi tất cả các div
            document.querySelectorAll('.menu-item').forEach(i => i.classList.remove('active'));
            // Thêm lớp 'active' cho div được nhấn
            this.classList.add('active');
        });
    });
</script>
