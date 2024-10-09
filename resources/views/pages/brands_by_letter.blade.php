<x-layouts.app>

    <x-slot:introduction_text>
        <p><img src="img/afbl_logo.png" align="right" width="100" height="100">{{ __('introduction_texts.homepage_line_1') }}</p>
        <p>{{ __('introduction_texts.homepage_line_2') }}</p>
        <p>{{ __('introduction_texts.homepage_line_3') }}</p>
    </x-slot:introduction_text>
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
    <h1>
        <x-slot:title >
            {{ __('misc.brands_starting_with') }} {{ $letter }}
        </x-slot:title>
    </h1>

    <?php
    $size = count($brands);
    $columns = 3;
    $chunk_size = ceil($size / $columns);
    ?>


    <div class="container">
        <h1>Brands starting with {{ $letter }}</h1>
        <div class="alphabet-links">
            @foreach(range('A', 'Z') as $letter)
                <a href="/brands/{{ $letter }}">{{ $letter }}</a>
            @endforeach
        </div>
        <!-- Example row of columns -->
        <div class="row">
            <div class="col-md-12">
                <ul class="brand-list">
                    @foreach($brands as $brand)
                        <?php
                        $current_first_letter = strtoupper(substr($brand->name, 0, 1));
                        if (!isset($header_first_letter) || (isset($header_first_letter) && $current_first_letter != $header_first_letter)) {
                            echo '<h2 class="header-text">' . $current_first_letter . '</h2>';
                        }
                        $header_first_letter = $current_first_letter;
                        ?>
                        <li>
                            <a href="/{{ $brand->id }}/{{ $brand->getNameUrlEncodedAttribute() }}/">{{ $brand->name }}</a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</x-layouts.app>
