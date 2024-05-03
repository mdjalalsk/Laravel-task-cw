@extends('frontend.layout')


@section('content')
    {{-- start carousel sections  --}}
    <div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000">
                <img src="{{ asset('assets/blog-slider1.jpg') }}" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="{{ asset('assets/blog-slider2.jpg') }}" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="{{ asset('assets/blog-slider3.jpg') }}" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    {{-- end carousel sections  --}}
    {{-- stat Blag sections  --}}
    <section class="my-4">
        <div class="container">
            <div class="row row-cols-1 row-cols-md-3 g-4">
                @foreach ($latestPosts as $post)
                    <div class="col">
                        <a href="{{ route('postDetails', ['id' => $post->id]) }}" class="text-decoration-none">
                            <div class="card h-100">
                                @if ($post->thumbnail)
                                    @php
                                        $thumbnailPath = public_path(
                                            'uploads/post_image/thumbnail/' . $post->thumbnail,
                                        );
                                    @endphp
                                    @if (file_exists($thumbnailPath))
                                        <img src="{{ asset('uploads/post_image/thumbnail/' . $post->thumbnail) }}"
                                            class="card-img-top" alt="thumbnail">
                                    @else
                                        <img src="{{ $post->thumbnail }}" class="card-img-top" alt="thumbnail">
                                    @endif
                                @endif

                                <div class="card-body">
                                    <h5 class="card-title">{{ $post->title }}</h5>
                                    <p class="card-text">{!! \Illuminate\Support\Str::limit($post->content, 150) !!}</p>
                                </div>
                                <div class="card-footer d-flex justify-content-between">
                                    <p><span class="fw-bold"> Author by:</span> {{ $post->user->name }}</p>
                                    <small class="text-muted">{{ $post->created_at->format('d F, Y') }}

                                    </small>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach

                {{ $latestPosts->links() }}
            </div>


        </div>

    </section>
@endsection
