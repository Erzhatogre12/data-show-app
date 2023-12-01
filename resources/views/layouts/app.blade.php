<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Data App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">



</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Data App</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page"
                            href="{{ route('show', ['dimensiId' => 1]) }}">Hak Sipil dan
                            Politik</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('show', ['dimensiId' => 2]) }}">Hak Ekonomi, Sosial, dan
                            Budaya
                        </a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
    <div class="me-5 ms-5 mt-5">
        <div id="app">
            <div class="main-wrapper">

                <div class="main-content">
                    @yield('content')
                </div>

            </div>
        </div>
    </div>
</body>

</html>
