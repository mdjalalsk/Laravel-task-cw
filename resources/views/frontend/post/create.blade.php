@extends('frontend.layout')
@section('content')
    <div class="card-body my-3">
        <div class="row">
            <div class="col-8 border border-primary py-3 mx-auto">
                <h5 class="card-title m-3">Create Project</h5>
                <form class="row g-3" id="postForm" action="{{ route('post.store') }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">
                    <div class="col-12">
                        <label for="project_title" class="form-label"> Title </label>
                        <input type="text" class="form-control" id="title" name="title">
                    </div>
                    <div class="col-12">
                        <label for="thumbnail" class="form-label">Thumbnail </label>
                        <input class="form-control" type="file" id="thumbnail" name="thumbnail">
                    </div>
                    <div class="col-12">
                        <label for="cover" class="form-label">Cover Image </label>
                        <input class="form-control" type="file" id="cover" name="cover">
                    </div>
                    <div class="col-12">
                        <label for="content" class="form-label">Content</label>
                        <textarea name="content" id="content">
              
                  </textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-primary" id="postCreate">Submit</button>
                    </div>
                </form>


            </div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            // Initialize CKEditor for each textarea field
            ClassicEditor.create(document.querySelector('#content'), {
                    ckfinder: {
                        uploadUrl: '{{ route('ckeditor.upload') }}?_token={{ csrf_token() }}',
                    },
                })
                .then(editor => {
                    console.log(editor);
                })
                .catch(error => {
                    console.error(error);
                });

            // AJAX form submission
            $('#postForm').submit(function(e) {
                e.preventDefault();
                var formData = new FormData(this);
                $.ajax({
                    type: 'POST',
                    url: $(this).attr('action'),
                    data: formData,
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        if (response.success) {
                            Swal.fire('Success', response.success, 'success').then(() => {
                                window.location.href = "{{ route('post.index') }}";
                            });
                        } else {
                            if (response.errors && response.errors.thumbnail) {
                                Swal.fire('Validation Error', response.errors.thumbnail[0],
                                    'error');
                            } else {
                                Swal.fire('Error', 'Failed to create project', 'error');
                            }
                        }
                        $('#postCreate').prop('disabled', false);
                        $('#postForm')[0].reset();
                    },
                    error: function(xhr, status, error) {
                        $('#postCreate').prop('disabled', false);
                        if (xhr.responseJSON && xhr.responseJSON.errors) {
                            var errors = xhr.responseJSON.errors;
                            var errorMessage = '';
                            $.each(errors, function(key, value) {
                                errorMessage += value + '\n';
                            });
                            Swal.fire('Validation Error', errorMessage, 'error');
                        } else {
                            console.error(xhr.responseText);
                            Swal.fire('Error', 'Something went wrong!', 'error');
                        }
                    }
                });
            });
        });
    </script>
@endsection
