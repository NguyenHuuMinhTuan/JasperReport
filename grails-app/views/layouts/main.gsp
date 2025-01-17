<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang chủ</title>
</head>

<header>
    <nav class="nav navbar navbar-expand navbar-brand col-12 bg-secondary">
        <g:render template="/dashboard/header"/>
    </nav>
</header>

<body>

<div class="container-fluid">
    <!-- First row: Sidebar -->
    <div class="row">
        <div class="col-3">
            <g:render template="/dashboard/sideBar"/>
        </div>

        <div class="col-9">
            <g:render template="/dashboard/main"/>
        </div>
    </div>

    <!-- Second row: Main content -->

</div>

</body>

<footer>
    <g:render template="/dashboard/footer"/>
</footer>

</html>
