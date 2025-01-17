<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang chủ</title>
</head>

<body>
<header>
    <nav class="nav navbar">
       <g:render template="dashboard/header"/>
    </nav>
</header>


<div>
    <div class="row">
        <div class="col-3">
            <g:render template="dashboard/sideBar"/>
        </div>
        <main role="main" class="col-9">
            <g:layoutBody/>
        </main>

    </div>


</div>
<footer>
    <g:render template="dashboard/footer"/>
</footer>
</body>
</html>