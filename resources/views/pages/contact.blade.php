<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
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