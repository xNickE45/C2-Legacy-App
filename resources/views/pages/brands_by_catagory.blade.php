<x-layouts.app>
    <style>
        footer {
            max-width: 100%;
            margin: 0 auto;
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
