<x-layouts.app>

    <x-slot:introduction_text>
        <p><img src="img/afbl_logo.png" align="right" width="100" height="100">{{ __('introduction_texts.homepage_line_1') }}</p>
        <p>{{ __('introduction_texts.homepage_line_2') }}</p>
        <p>{{ __('introduction_texts.homepage_line_3') }}</p>
    </x-slot:introduction_text>

    <h1>
        <x-slot:title >
            {{ __('misc.all_brands') }}
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
        border: 1px solid ;
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

    footer{
        text-align: start;
        padding: 10px;
        background-color: #f1f1f1;
        position: fixed;
        width: 100%;
        bottom: 0;
    }

    footer{
        max-width: 100%;
        margin: 0 auto;
    }
    </style>

    <div class="container">
        <!-- Example row of columns -->
        <div class="row">
            @foreach($brands->chunk($chunk_size) as $chunk)
                <div class="col-md-4">

                    {{-- <ul class="brand-list"> --}}
                        @foreach($chunk as $brand)
                            <?php
                            $current_first_letter = strtoupper(substr($brand->name, 0, 1));

                            if (!isset($header_first_letter) || (isset($header_first_letter) && $current_first_letter != $header_first_letter)) {
                                echo '</ul>
                        <h2 class="header-text">' . $current_first_letter . '</h2>
                        <ul class="brand-list">';
                            }
                            $header_first_letter = $current_first_letter
                            ?>

                            <li>
                                <a href="/{{ $brand->id }}/{{ $brand->getNameUrlEncodedAttribute() }}/">{{ $brand->name }}</a>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <?php
                unset($header_first_letter);
                ?>
            @endforeach
        </div>
    <h2>Top 10 Visited Manuals</h2>
        <ul>
            @foreach($topManuals as $manual)
                <li>{{ $manual->name }} - {{ $manual->visits }} visits</li>
            @endforeach
        </ul>
    </div>
</x-layouts.app>
