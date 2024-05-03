@extends('frontend.layout')
@section('content')
    <section class="mb-5">
        @if ($singlePost->cover)
            @php
                $coverPath = public_path('uploads/post_image/cover/' . $singlePost->cover);
            @endphp
            @if (file_exists($coverPath))
                <img src="{{ asset('uploads/post_image/cover/' . $singlePost->cover) }}" alt="cover" class="w-100">
            @else
                <img src="{{ $singlePost->cover }}" alt="cover" class="w-100">
            @endif
        @endif
        <h1 class="my-3">{{ $singlePost->title }}</h1>
        <p>{!! $singlePost->content !!}</p>
    </section>

    <section class="my-4">
        <h3>Comments</h3>
        <div class="row">
            <div class="col-12 col-md-8">
                <div id="comments-container">
                    @foreach ($singlePost->comments as $comment)
                        <div class="card mt-3" data-comment-id="{{ $comment->id }}">
                            <div class="card-body d-flex gap-4">
                                <div>
                                    <img src="{{ asset('assets/useporfile.jpg') }}" class="rounded-circle"
                                        style="width: 40px; height:40px;">
                                </div>
                                <div>
                                    <p class="comment-text">{{ $comment->text }}</p>
                                    <small class="text-muted fw-bold">By {{ $comment->user->name }} on
                                        {{ $comment->created_at->format('M d, Y') }}</small>
                                </div>
                            </div>
                            @if (auth()->check() && $comment->user_id == auth()->user()->id)
                                <!-- Show edit and delete buttons for authenticated user's own comments -->
                                <div class="m-3">
                                    <button class="btn btn-sm btn-primary"
                                        onclick="editComment({{ $comment->id }}, '{{ $comment->text }}')">Edit</button>
                                    <button class="btn btn-sm btn-danger"
                                        onclick="deleteComment({{ $comment->id }})">Delete</button>
                                </div>
                            @endif
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </section>
    {{--  start add comment form  --}}

    <section class="my-4 w-75">
        <div class="d-flex gap-5">
            <button type="button" id="add-comment-btn" class="btn btn-outline-success">Add comment </button>
            <button type="button" id="create-post" class="btn btn-outline-primary">Create post </button>
        </div>
        @if (auth()->check())
            <form method="post" action="{{ route('storeComment') }}" id="comment-form" style="display:none;">
                @csrf
                <input type="hidden" name="blog_post_id" value="{{ $singlePost->id }}">
                <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
                <div class="form-group">
                    <label for="comment">Your Comment</label>
                    <textarea class="form-control" id="comment" name="text" rows="3" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary mt-2">Submit</button>
            </form>
        @endif
    </section>

    {{-- end add comment form  --}}
    {{-- start edit form  model --}}
    <div class="modal fade" id="edit-comment-modal" tabindex="-1" aria-labelledby="edit-comment-modal-label"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="edit-comment-modal-label">Edit Comment</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form id="edit-comment-form" action="" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="edit-comment-text">Your Comment</label>
                            <textarea class="form-control" id="edit-comment-text" name="text" rows="3" required></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    {{-- end edit form  model --}}


    <script>
        // edit modal form
        function editComment(commentId, commentText) {
            $('#edit-comment-modal #edit-comment-text').val(commentText);
            $('#edit-comment-modal #edit-comment-form').attr('action', '/comments/' + commentId);
            $('#edit-comment-modal').modal('show');
        }

        function deleteComment(commentId) {

            var csrfToken = $('meta[name="csrf-token"]').attr('content');

            // Show SweetAlert confirmation dialog
            Swal.fire({
                title: 'Are you sure?',
                text: 'You won\'t be able to revert this!',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#d33',
                cancelButtonColor: '#3085d6',
                confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
                if (result.isConfirmed) {
                    // User confirmed deletion, proceed with AJAX request
                    $.ajax({
                        type: 'DELETE',
                        url: '/comments/' + commentId,
                        headers: {
                            // Include CSRF token in the request headers
                            'X-CSRF-TOKEN': csrfToken
                        },
                        success: function(response) {
                            // Remove the comment from the DOM
                            $('#comment-' + commentId).remove();
                            // Show success message with SweetAlert
                            Swal.fire(
                                'Deleted!',
                                response.message,
                                'success'
                            );
                            window.location.reload();
                        },
                        error: function(xhr, status, error) {
                            console.error(xhr.responseText);
                            // Show error message with SweetAlert
                            Swal.fire(
                                'Error!',
                                'An error occurred while deleting the comment.',
                                'error'
                            );
                        }
                    });
                }
            });
        }

        $(document).ready(function() {

            var isAuthenticated = "{{ Auth::check() }}";
            // toggle button  for  add comment button
            $('#add-comment-btn').click(function() {
                // Check if user is authenticated

                if (isAuthenticated) {
                    $('#comment-form').toggle();
                } else {
                    Swal.fire({
                        icon: 'info',
                        title: 'Please login first',
                        showConfirmButton: true,
                    });
                }
            });

            $('#create-post').click(function() {

                if (isAuthenticated) {
                    window.location.href = "{{ route('post.index') }}";
                } else {
                    Swal.fire({
                        icon: 'info',
                        title: 'Please login first',
                        showConfirmButton: true,
                    });
                }

            });


            @if (auth()->check())
                $('#comment-form').submit(function(e) {
                    e.preventDefault();

                    var formData = $(this).serialize();
                    var url = $(this).attr('action');

                    $.ajax({
                        type: 'POST',
                        url: url,
                        data: formData,
                        success: function(response) {
                            var commentHtml = '<div class="card mt-3" data-comment-id="' +
                                response
                                .id + '">' +
                                '<div class="card-body d-flex gap-4">' +
                                '<div>' +
                                '<img src="{{ asset('assets/useporfile.jpg') }}" class="rounded-circle" style="width: 40px; height:40px;">' +
                                '</div>' +
                                '<div>' +
                                '<p class="comment-text">' + response.text + '</p>' +
                                '<small class="text-muted fw-bold">By ' + response.user.name +
                                ' on ' + response.created_at + '</small>' +
                                '</div>' +
                                '</div>';

                            if (response.user_id == {{ auth()->id() }}) {
                                commentHtml += '<div class="m-3">' +
                                    '<button class="btn btn-sm btn-primary" onclick="editComment(' +
                                    response.id + ', \'' + response.text +
                                    '\')">Edit</button>' +
                                    '<button class="btn btn-sm btn-danger" onclick="deleteComment(' +
                                    response.id + ')">Delete</button>' +
                                    '</div>';
                            }


                            commentHtml += '</div>';

                            $('#comments-container').append(commentHtml);
                            $('#comment').val('');
                            window.location.reload();
                        },
                        error: function(xhr, status, error) {
                            // Handle errors
                            console.error(xhr.responseText);
                        }
                    });
                });
            @endif


            $('#edit-comment-form').submit(function(e) {
                e.preventDefault();
                var formData = $(this).serialize();
                var url = $(this).attr('action');

                $.ajax({
                    type: 'PUT',
                    url: url,
                    data: formData,
                    success: function(response) {

                        var commentId = response.id;
                        console.log(commentId);
                        var updatedCommentText = response.text;

                        var commentCard = $('#comments-container').find(
                            '.card[data-comment-id="' + commentId + '"]');
                        commentCard.find('.comment-text').text(updatedCommentText);
                        // console.log(commentCard, updatedCommentText); 
                        Swal.fire({
                            icon: 'success',
                            title: 'Comment Updated!',
                            text: 'Your comment has been successfully updated.',
                            showConfirmButton: false,
                            timer: 1500 // Automatically close after 1.5 seconds
                        });

                        $('#edit-comment-modal').modal('hide');
                    },
                    error: function(xhr, status, error) {
                        console.error(xhr.responseText);
                    }
                });
            });

        });
    </script>
@endsection
