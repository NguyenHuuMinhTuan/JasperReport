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
    <nav class="nav navbar">
%{--       <g:render template="dashboard/header"/>--}%
        <p>header</p>
    </nav>
</header>

<body>

<div>
    <div class="row">
        <div class="col-3">
%{--            <g:render template="dashboard/sideBar"/>--}%
            <p>sidebar</p>
        </div>
        <main role="main" class="col-9">
            <g:layoutBody/>
        </main>

    </div>


</div>

</body>
<footer>
%{--        <g:render template="dashboard/footer"/>--}%
    <p>footer</p>
</footer>

</html>