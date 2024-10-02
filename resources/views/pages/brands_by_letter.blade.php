<x-layouts.app>

    <x-slot:introduction_text>
        <p><img src="img/afbl_logo.png" align="right" width="100" height="100">{{ __('introduction_texts.homepage_line_1') }}</p>
        <p>{{ __('introduction_texts.homepage_line_2') }}</p>
        <p>{{ __('introduction_texts.homepage_line_3') }}</p>
    </x-slot:introduction_text>

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

    <style>
        .header-text {
            font-size: 2.5em;
            font-weight: bold;
        }

        .brand-list {
            background-color: rgb(249, 245, 245); /* Pas deze kleur aan om te matchen met de rest van de pagina */
            border: 1px solid;
            box-shadow: 5px 5px 5px #e4dede;
            padding: 10px;
            border-radius: 5px;
        }

        .brand-list a {
            text-decoration: none;
        }

        .brand-list a:hover {
            color: rgb(42, 92, 123); /* Pas deze kleur aan om te matchen met de rest van de pagina */
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        footer {
            text-align: start;
            padding: 10px;
            background-color: #f1f1f1;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        footer {
            max-width: 100%;
            margin: 0 auto;
        }
    </style>

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
