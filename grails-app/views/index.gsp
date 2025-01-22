<meta name="layout" content="main"/>

<style>
.card {
    border: 1px solid #ccc;
    border-radius: 10px;
    padding: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    font-family: 'Sarabun', sans-serif;
}

.no-padding {
    padding-left: 0;
    padding-right: 0;
}

.card-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #f8f9fa;
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.items {
    display: flex;
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
    border-radius: 5px;
    overflow: hidden;

}


.info p {
    font-size: 12px;


}

.info h4 {
    font-size: 15px;
}

.info {
    margin-left: 10px;
}

.title {
    border-bottom: yellow 2px solid;
}

</style>

<div class="card">
    <div class="card-header" style="outline: orange solid 2px; border-radius: 10px">
        <p class="mt-2">Trang chủ</p>

        <div class="ml-auto " id="clock"></div>
    </div>

    <div class="card-body" style="padding-left: 0; padding-right: 0">
        <div class="row ">
            <div class="col-md-12 col-lg-6" style="padding-right: 0; padding-left: 0">
                <div class="row">
                    <div class="col-md-6 gx-3  items">
                        <i class='icon bx bxs-user-account fa-4x bg-danger'></i>

                        <div class="info">
                            <h4 style="color: orangered">TỔNG KHÁCH HÀNG</h4>

                            <p style="border-bottom: black dashed 1px">54 khách hàng</p>

                            <p>Tổng số khách hàng trong năm</p>
                        </div>

                    </div>

                    <div class="col-md-6 gx-3 items">
                        <i class='bx bx-tachometer fa-4x bg-success'></i>

                        <div class="info">
                            <h4 style="color: #1c7430">TỔNG SỐ SẢN PHẨM</h4>

                            <p style="border-bottom: black dashed 1px">
                                145 đơn trong tháng này</p>

                            <p>Tổng số đơn hàng trong năm</p>
                        </div>

                    </div>


                    <div class="col-md-6 gx-3 items">
                        <i class='icon bx bx-id-card fa-4x bg-warning'></i>

                        <div class="info">
                            <h4 style="color: orangered">QUẢN LÝ NHÂN VIÊN</h4>

                            <p style="border-bottom: black dashed 1px">546 nhân viên</p>

                            <p>Tổng số nhân viên trong năm</p>
                        </div>

                    </div>


                    <div class="col-md-6 gx-3 items">
                        <i class='icon bx bxs-alarm fa-4x bg-primary'></i>

                        <div class="info">
                            <h4 style="color: #b1dfbb">TỔNG THU CHI</h4>

                            <p style="border-bottom: black dashed 1px">123 lần thu chi</p>

                            <p>Tổng số lần thu trong năm</p>
                        </div>

                    </div>


                    <div class="col-md-12 mt-2"
                         style="border-radius: 10px;box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
                         ">
                        <span class="title">
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

                    <div class="col-md-12" style="box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.5);
                    ">
                        <div class="tile">
                            <h3 class="tile-title">Thống kê 6 tháng doanh thu</h3>

                            <div class="embed-responsive embed-responsive-16by9">
                                <canvas class="embed-responsive-item" id="pieChart"></canvas>
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
    var pieChar = document.getElementById("pieChart").getContext("2d");

    // Data for the chart
    var pieChart = new Chart(pieChar, {
        type: "pie",
        data: {
            labels: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6"], // Labels for 6 months
            datasets: [{
                label: "Doanh số trong 6 tháng (triệu VND)",
                data: [120, 150, 180, 200, 160, 220], // Sample data
                backgroundColor: [
                    "#FF6384", // Color for Tháng 1
                    "#36A2EB", // Color for Tháng 2
                    "#FFCE56", // Color for Tháng 3
                    "#4BC0C0", // Color for Tháng 4
                    "#9966FF", // Color for Tháng 5
                    "#FF9F40"  // Color for Tháng 6
                ],
                hoverBackgroundColor: [
                    "#FF6384CC",
                    "#36A2EBCC",
                    "#FFCE56CC",
                    "#4BC0C0CC",
                    "#9966FFCC",
                    "#FF9F40CC"
                ]
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'top', // Vị trí của legend
                    labels: {
                        font: {
                            size: 16 // Font size của legend
                        }
                    }
                },
                tooltip: {
                    callbacks: {
                        label: function (context) {
                            const label = context.label || ''; // Lấy tên label
                            const value = context.raw || 0;   // Lấy giá trị dữ liệu
                            return `${label}: ${value} triệu VND`; // Nội dung tooltip
                        }
                    }
                }
            }
        }

    });
    // Line chart
    var ctxLine = document.getElementById("lineChartDemo").getContext("2d");
    var lineChart = new Chart(ctxLine, {
        type: "line",
        data: {
            labels: ["Jan", "Feb", "Mar", "Apr", "Mat", "Jun"],
            datasets: [{
                label: "Số lượng đầu vào",
                data: [90, 75, 50, 80, 60, 70],
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




