<!DOCTYPE html>
<html lang="en">
<head>
    <x-head/>
</head>
<body>

<x-navbar/>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f9f9f9;
        color: #333;
        margin: 0 auto;
        padding: 0;
    }

    .header-text {
        font-size: 2.5em;
        font-weight: bold;
        text-align: center;
        margin-top: 20px;
        color: #2a5c7b;
    }

    .brand-list {
        background-color: #fff;
        border: 1px solid #ddd;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 20px;
        border-radius: 8px;
        margin-bottom: 20px;
    }

    .brand-list a {
        text-decoration: none;
        color: #2a5c7b;
        font-weight: bold;
    }

    .brand-list a:hover {
        color: #1a3c5b;
    }

    .container {
        margin: 0 auto;
            ;
    }

    footer {
        text-align: center;
        padding: 20px;
        background-color: #2a5c7b;
        color: #fff;
        width: 100%;
        bottom: 0;
    }

    .row{
        margin: 0 auto;

    }

    .col-md-8{
        margin: 0 auto;
        max-width: 100%;
    }
</style>
<div class="container">

        <div class="col-md-8">
            <x-header/>

            <ul class="breadcrumb">
                <li><a href="/" title="{{ __('misc.home_alt') }}"
                    alt="{{ __('misc.home_alt') }}">{{ __('misc.home') }}</a></li>

                {{ $breadcrumb ?? '' }}
            </ul>

            @if ( isset($_GET['q']) )
                <x-search_results/>
            @else
                {{ $slot }}
            @endif


        </div>



</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>//window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="{{ asset('/js/app.js') }}"></script>
<div class="row">
    <x-footer/>
</div>
</body>
</html>
