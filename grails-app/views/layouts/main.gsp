<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.css "/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Trang chủ</title>
</head>

<header>
    <nav class="nav navbar navbar-expand navbar-brand col-12 bg-secondary">
        <g:render template="/dashboard/header"/>
    </nav>
</header>

<body>

<div class="container-fluid" style="padding-left: 0;padding-right: 0">
    <div class="row">
        <div class="col-2" style="padding-left: 0;padding-right: 0">
            <g:render template="/dashboard/sideBar"/>
        </div>

        <div class="col-10" style="padding: 0">
            <g:render template="/dashboard/main"/>
        </div>
    </div>

</div>

</body>

<footer>
    <g:render template="/dashboard/footer"/>
</footer>

</html>
