<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Update Testimonials</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('testimonials.update',['testimonial'=> $testimonial->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title" style="color: black !important;" value="{{ $testimonial->title }}">
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control form-control-rounded" id="description" name="description" placeholder="Enter Description">{{ $testimonial->description }}</textarea>
                    </div>

                    <div class="form-group">
                        <label for="client_data">Client Data</label>
                        <input type="text" class="form-control form-control-rounded" id="client_data" name="client_data" placeholder="Enter Client Data" style="color: black !important;" value="{{ $testimonial->client_data }}">
                    </div>


                    <div class="form-group">
                        <label for="client_image">Client Image</label>
                        @if ($testimonial->client_image)
                        <div>
                            <img src="{{ asset('storage/app/public/' . $testimonial->client_image) }}" alt="{{ $testimonial->title }}" width="150" id="preview-image">
                            <br>
                            <button type="button" class="btn btn-warning btn-round mt-2" onclick="document.getElementById('client_image').click();">Update Image</button>
                            <input type="file" class="form-control d-none" id="client_image" name="client_image">
                        </div>
                    @else
                        <input type="file" class="form-control" id="client_image" name="client_image" onchange="previewImage(event)">
                        <br>
                        <img id="image_preview" style="max-width: 200px; display: none;">
                    @endif
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Include CKEditor script -->
    <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            ClassicEditor
                .create(document.querySelector('#description'))
                .catch(error => {
                    console.error(error);
                });
        });

       // Image preview function
            document.getElementById('client_image').addEventListener('change', function(e) {
                if (e.target.files && e.target.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var previewImage = document.getElementById('preview-image');
                        previewImage.src = e.target.result;
                        previewImage.style.display = 'block';
                    };
                    reader.readAsDataURL(e.target.files[0]);
                }
            });
    </script>
</x-app-layout>
