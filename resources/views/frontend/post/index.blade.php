@extends('frontend.layout')
@section('content')
    <section class="py-5 px-2">
        <a class="btn btn-outline-primary my-3" href="{{ route('post.create') }}">Create Post</a>

        @if ($posts)
            <div class="table-responsive">
                <table id="datatablesSimple" class="table-bordered border-primary">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Post Title</th>
                            <th>Post Thumbnail</th>
                            <th>Post Cover</th>
                            <th>Post Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>
                        @foreach ($posts as $post)
                            <tr>
                                <td>{{ $post->id }}</td>

                                <td>{{ $post->title }}</td>
                                <td>
                                    @if ($post->thumbnail)
                                        @php
                                            $thumbnailPath = public_path(
                                                'uploads/post_image/thumbnail/' . $post->thumbnail,
                                            );
                                        @endphp
                                        @if (file_exists($thumbnailPath))
                                            <img src="{{ asset('uploads/post_image/thumbnail/' . $post->thumbnail) }}"
                                                alt="thumbnail" style="width: 80px">
                                        @else
                                            <img src="{{ $post->thumbnail }}" alt="thumbnail" style="width: 80px">
                                        @endif
                                    @endif
                                </td>
                                <td>
                                    @if ($post->cover)
                                        @php
                                            $coverPath = public_path('uploads/post_image/cover/' . $post->cover);
                                        @endphp
                                        @if (file_exists($coverPath))
                                            <img src="{{ asset('uploads/post_image/cover/' . $post->cover) }}"
                                                alt="cover" style="width: 80px">
                                        @else
                                            <img src="{{ $post->cover }}" alt="cover" style="width: 80px">
                                        @endif
                                    @endif
                                </td>
                                <td>{!! $post->content !!}</td>
                                <td class="d-flex justify-content-center">
                                    <div class="btn-group" role="group" aria-label="User Actions">

                                        <a href="{{ route('post.show', $post->id) }}" class="border-0 btn"><i
                                                class="fas fa-eye" style="color: #1179e8;"></i></a>
                                        <a href="{{ route('post.edit', $post->id) }}" class="border-0 btn"><i
                                                class="fas fa-edit fs-4" style="color: #5edc09;"></i></a>

                                        <button type="button" class="btn delete-user-btn"
                                            data-post-id="{{ $post->id }}"><i
                                                class="fas fa-trash-alt text-danger fs-4"></i></button>

                                    </div>
                                </td>
                            </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
        @else
            <h1> There has no post yet!</h1>
        @endif
    </section>

    <script>
        $(document).ready(function() {
            $('.delete-user-btn').click(function() {
                var postId = $(this).data('post-id');

                Swal.fire({
                    title: 'Confirm Delete',
                    text: 'Are you sure you want to delete this post?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Delete'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url: '/delete-post/' + postId,
                            type: 'DELETE',
                            data: {
                                "_token": "{{ csrf_token() }}"
                            },
                            success: function(response) {
                                Swal.fire('Deleted!', response.success, 'success').then(
                                    () => {
                                        window.location.href =
                                            "{{ route('post.index') }}";
                                    });;

                            },
                            error: function(xhr, status, error) {
                                console.error(xhr.responseText);

                            }
                        });
                    }
                });
            });

        });
    </script>
@endsection
