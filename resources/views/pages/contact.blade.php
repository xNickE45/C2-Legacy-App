<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
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

        .row{
            margin: 0 auto;

        }

        .col-md-8{
            margin: 0 auto;
            max-width: 100%;
        }
    </style>
</head>



<x-navbar>
</x-navbar>
<ul class="breadcrumb">
    <li><a href="/" title="{{ __('misc.home_alt') }}"
        alt="{{ __('misc.home_alt') }}">{{ __('misc.home') }}</a></li>
    <li>    <a  href="/contact">contact</a></li>
    {{ $breadcrumb ?? '' }}
</ul>
<body>
    <div class="container">
        <h1>Contact Us</h1>
        <form action="" method="POST">

            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" name="message" class="form-control" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Send</button>
        </form>
    </div>

</body>
</html>
