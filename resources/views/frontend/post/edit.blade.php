@extends('frontend.layout')
@section('content')
<div class="card-body py-3">
    <div class="row ">
        <div class="col-8 border border-primary p-3 mx-auto">
            <h5 class="card-title m-3">Edit Project</h5>
            <form class="row g-3" id="editpostForm" action="{{ route('post.update', $post->id) }}"
                method="POST">
                @csrf
                @method('PUT')
                <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">

                <div class="col-12">
                    <label for="title" class="form-label">Project Title</label>
                    <input type="text" class="form-control" id="title" name="title"
                        value="{{ $post->title }}">
                </div>
     
                <div class="col-12">
                    <label for="thumbnail" class="form-label">Thumbnail</label>
                    <div class="d-flex align-items-center">
                    <input type="file" class="form-control w-50 me-5" id="thumbnail" name="thumbnail">
                    <img src="{{ asset('uploads/post_image/thumbnail/' . $post->thumbnail) }}" style="width: 100px;"
                        id="thumbnail-preview">
                </div>
                </div>
                <div class="col-12 ">
                    <label for="cover" class="form-label">Thumbnail</label>
                 
                    <div class="d-flex align-items-center">
                        <input type="file" class="form-control w-50 me-5" id="cover" name="cover">
                    <img src="{{ asset('uploads/post_image/cover/' . $post->cover) }}"  style="width: 100px;"
                        id="cover-preview">
                    </div>
                   
                </div>  
                <div class="col-12">
                    <label for="content" class="form-label">Overview Sort Description</label>
                    <textarea class="form-control" name="content" id="content">{{ $post->content }}</textarea>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary" id="postedit">Submit</button>
                </div>
            </form>
           

         
        </div>
    </div>


</div>

<script>
      $(document).ready(function() {
    // Initialize CKEditor for description fields
    ClassicEditor.create(document.querySelector('#content'), {
        ckfinder: {
            uploadUrl: '{{ route('ckeditor.upload').'?_token='.csrf_token() }}',
        },
    })
    .catch(error => {
        console.error(error);
    });

    // Preview thumbnail image
    $('#thumbnail').change(function() {
        var input = this;
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#thumbnail-preview').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    });

    // Preview cover image
    $('#cover').change(function() {
        var input = this;
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#cover-preview').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    });

    // Handle form submission
    $('#editpostForm').submit(function(event) {
        event.preventDefault(); // Prevent default form submission behavior

        // Serialize form data
        var formData = new FormData($(this)[0]);

        $.ajax({
            type: 'POST',
            url: $(this).attr('action'),
            data: formData,
            processData: false,
            contentType: false,
            dataType: 'json',
            success: function(response) {
                if (response.success) {
                    Swal.fire('Success', response.success, 'success').then(() => {
                        window.location.href = "{{ route('post.index') }}";
                    });
                } else {
                    // Display validation errors
                    if (response.errors) {
                        var errorMessage = '';
                        $.each(response.errors, function(key, value) {
                            errorMessage += value + '\n';
                        });
                        Swal.fire('Validation Error', errorMessage, 'error');
                    } else {
                        Swal.fire('Error', 'Failed to update post', 'error');
                    }
                }
            },
            error: function(xhr, status, error) {
                console.error(xhr.responseText);
                Swal.fire('Error', 'Something went wrong!', 'error');
            }
        });
    });
});

</script>
@endsection