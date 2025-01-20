<meta name="layout" content="main"/>

<style>

@import url('https://fonts.googleapis.com/css2?family=Sarabun:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');
@import url(https://fonts.googleapis.com/css?family=Lato:300,400,400i,700);
@import url(https://fonts.googleapis.com/css?family=Niconne);
@import url('https://fonts.googleapis.com/css2?family=Alata&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Sarabun:wght@400;700&display=swap');

.card {
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    font-family: 'Sarabun', sans-serif;
}

.card-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #f8f9fa;
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.card-body {
    padding: 20px;
}

.items {
    display: flex;
    margin: 10px;
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
    border-radius: 5px;
    box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);

}

.tile {
    margin-top: 20px;
}
</style>

<div class="card">
    <div class="card-header" style="outline: orange solid 2px; border-radius: 10px">
        <p class="mt-2">Trang chủ</p>

        <div class="ml-auto " id="clock"></div>
    </div>

    <div class="card-body">
        <div class="row">
            <div class="col-md-12 col-lg-6" >
                <div class="row">
                    <div class="col-md-6 items">
                        <i class='bx bx-shopping-bag'></i>

                        <div class="info">
                            <h4 style="color: red">TỔNG KHÁCH HÀNG</h4>
                            <p style="border-bottom: black dashed 1px">54 khách hàng</p>
                            <p>Tổng số khách hàng trong năm</p>
                        </div>

                    </div>

                    <div class="col-md-6 items"><i class='fa fa-eye'></i>

                        <div class="info">
                            <h4 style="color: green">TỔNG SỐ SẢN PHẨM</h4>

                            <p style="border-bottom: black dashed 1px">
                                145 đơn trong tháng này</p>
                            <p>Tổng số đơn hàng trong năm</p>
                        </div>

                    </div>

                    <div class="col-md-12 items"><i class='fa fa-user'></i>

                        <div class="info">
                            <h4>Tổng sô lượng khách hàng</h4>

                            <p>54 khách hàng</p>
                        </div>

                    </div>

                    <div class="col-md-12 items"><i class='app-menu__icon bx bx-cart-alt'></i>

                        <div class="info">
                            <h4>Tổng sô lượng khách hàng</h4>

                            <p>54 khách hàng</p>
                        </div>

                    </div>

                    <div class="col-md-12 m-2" style="border-radius: 20px;background-color: #D3D3D3;box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
                    ">
                            <span class="tile" style="border-bottom: yellow solid 1px">
                                <h3>Thống kê nhân sự</h3>
                            </span>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>MNV</th>
                                <th>Họ và tên</th>
                                <th>LTK</th>

                            </tr>

                            </thead>
                            <tbody>
                            <tr>
                                <td>0</td>
                                <td>221501982</td>
                                <td>Nguyen Minh Hieu</td>
                                <td>Staff</td>

                            </tr>
                            <tr>
                                <td>0</td>
                                <td>221501982</td>
                                <td>Nguyen Minh Hieu</td>
                                <td>Staff</td>

                            </tr>
                            <tr>
                                <td>0</td>
                                <td>221501982</td>
                                <td>Nguyen Minh Hieu</td>
                                <td>Staff</td>

                            </tr>
                            <tr>
                                <td>0</td>
                                <td>221501982</td>
                                <td>Nguyen Minh Hieu</td>
                                <td>Staff</td>

                            </tr>
                            </tbody>
                            <tfooter>
                                <th>Tổng</th>
                                <td>12</td>
                            </tfooter>
                        </table>

                    </div>
                </div>
            </div>

            <div class="col-md-12 col-lg-6">
                <div class="row">
                    <div class="col-md-12" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
                    ">
                        <div class="tile">
                            <h3 class="tile-title">Dữ liệu 6 tháng đầu vào</h3>

                            <div class="embed-responsive embed-responsive-16by9">
                                <canvas class="embed-responsive-item" id="lineChartDemo"></canvas>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
                    ">
                        <div class="tile">
                            <h3 class="tile-title">Thống kê 6 tháng doanh thu</h3>

                            <div class="embed-responsive embed-responsive-16by9">
                                <canvas class="embed-responsive-item" id="barChartDemo"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script type="text/javascript">
    //Thời Gian
    function time() {
        var today = new Date();
        var weekday = new Array(7);
        weekday[0] = "Chủ Nhật";
        weekday[1] = "Thứ Hai";
        weekday[2] = "Thứ Ba";
        weekday[3] = "Thứ Tư";
        weekday[4] = "Thứ Năm";
        weekday[5] = "Thứ Sáu";
        weekday[6] = "Thứ Bảy";
        var day = weekday[today.getDay()];
        var dd = today.getDate();
        var mm = today.getMonth() + 1;
        var yyyy = today.getFullYear();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        nowTime = h + " giờ " + m + " phút " + s + " giây";
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        today = day + ', ' + dd + '/' + mm + '/' + yyyy;
        tmp = '<span class="date"> ' + today + ' - ' + nowTime +
            '</span>';
        document.getElementById("clock").innerHTML = tmp;
        clocktime = setTimeout("time()", "1000", "Javascript");

        function checkTime(i) {
            if (i < 10) {
                i = "0" + i;
            }
            return i;
        }
    }

    time()
    // Line chart
    var ctxLine = document.getElementById("lineChartDemo").getContext("2d");
    var lineChart = new Chart(ctxLine, {
        type: "line",
        data: {
            labels: ["Jan", "Feb", "Mar", "Apr", "Mat", "Jun"],
            datasets: [{
                label: "Số lượng đầu vào",
                data: [90, 45, 50, 80, 60, 70],
                borderColor: "blue",
                backgroundColor: "rgba(0, 0, 255, 0.1)",
                fill: true
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: true,
                    position: "top"
                }
            }
        }
    });

    // Bar chart
    var ctxBar = document.getElementById("barChartDemo").getContext("2d");
    var barChart = new Chart(ctxBar, {
        type: "bar",
        data: {
            labels: ["Jan", "Feb", "Mar", "Apr", "Mat", "Jun"],
            datasets: [{
                label: "Doanh thu",
                data: [100, 200, 300, 250, 400, 500],
                backgroundColor: ["#FF6384", "#36A2EB", "#FFCE56", "#4BC0C0", "#9966FF", "#FF9F40"]
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    display: true,
                    position: "top"
                }
            }
        }
    });
</script>




