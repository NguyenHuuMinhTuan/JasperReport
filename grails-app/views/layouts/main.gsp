<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Intern Management"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark navbar-static-top" role="navigation">
    <a class="navbar logo" href="/">Intern Mãi đĩnh</a>

</nav>

<div class="container-fluid">
    <div class="row-fluid d-lg-flex">
        <div class="col-sm-3 bg-dark mr-lg-1" style="color:white ">
            <div>
                <img class="logo" src="https://reviewcty.net/Content/images/companies/tri-anh-solution-logo.png" alt="Logo">
                <ul class="sidebar">Account Management

                    <g:link controller="account" action="create">
                        <li class="child">Add Account</li>
                    </g:link>


                </ul>
                <ul class="sidebar">Product Manager</ul>
                <ul class="sidebar">Category Manager</ul>
            </div>

        </div>
        <main role="main" class="col-sm-9 " style="color: black">
            <g:layoutBody/>
        </main>
    </div>

</div>

<asset:javascript src="application.js"/>

</body>
</html>
