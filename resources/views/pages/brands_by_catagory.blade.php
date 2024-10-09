<x-layouts.app>
    <style>
        footer {
            max-width: 100%;
            margin: 0 auto;
        }
    </style>
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
        <h1>{{ $category->catagory }}</h1>
        <ul>
            @foreach ($category->brands as $brand)
                <li>
                    <a
                        href="/{{ $brand->id }}/{{ $brand->getNameUrlEncodedAttribute() }}/">{{ $brand->name }}</a>
                </li>
            @endforeach

        </ul>
    </div>
</x-layouts.app>
