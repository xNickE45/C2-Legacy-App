<x-layouts.app>

    <x-slot:head>
        <meta name="robots" content="index, nofollow">
    </x-slot:head>

    <x-slot:breadcrumb>
        <li><a href="/{{ $brand->id }}/{{ $brand->getNameUrlEncodedAttribute() }}/" alt="Manuals for '{{$brand->name}}'" title="Manuals for '{{$brand->name}}'">{{ $brand->name }}</a></li>
    </x-slot:breadcrumb>
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
    <style>
        .manual-links {
            display: grid;
            grid-template-columns: 1fr 1fr;
            border: 1px solid #f1f1f3;
            padding: 10px;
            box-shadow: 2px 2px 2px #f1f1f1;
            border-radius:5px;

        }
    </style>

    <h1>{{ $brand->name }}</h1>

    <p>{{ __('introduction_texts.type_list', ['brand'=>$brand->name]) }}</p>


            @foreach ($manuals as $manual)

                @if ($manual->locally_available)
                    <a href="/{{ $brand->id }}/{{ $brand->getNameUrlEncodedAttribute() }}/{{ $manual->id }}/" alt="{{ $manual->name }}" title="{{ $manual->name }}">{{ $manual->visits }} {{ $manual->name }}</a>
                    ({{$manual->filesize_human_readable}})
                @else
                    {{-- the link to the manual --}}
                    <div class="manual-links"> <a href="/{{ $brand->id }}/{{ $brand->name }}/{{ $manual->id }}" target="new" alt="{{ $manual->name }}" title="{{ $manual->name }}" >{{ $manual->name }}</a> | Visits: {{ $manual->visits }}. </div>
                @endif



            <br />
        @endforeach

</x-layouts.app>
