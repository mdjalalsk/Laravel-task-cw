@extends('frontend.layout')
@section('content')
<div class="card-body">
    <div class="row ">
        @if($post->cover)
        @php
            $coverPath = public_path('uploads/post_image/cover/'. $post->cover);
        @endphp
        @if(file_exists($coverPath))
        <img src="{{ asset('uploads/post_image/cover/' . $post->cover) }}" alt="cover" class="w-100">
        @else
            <img src="{{ $post->cover}}" alt="cover" class="w-100">
        @endif
    @endif
            <h1 class="my-3 fw-bolder">{{ $post->title }}</h1>
            <p>{!! $post->title !!}</p>
            <div class="d-flex align-items-center gap-3">
                <p><span class="fw-bold"> Author by:</span> {{$post->user->name}}</p>
                  <p >{{ $post->created_at->format('d F, Y') }}</p>
              </div>     
    </div>


</div>


@endsection
