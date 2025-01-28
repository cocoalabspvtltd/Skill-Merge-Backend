<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Add Hackverse Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('hackverse.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control form-control-rounded" id="description" name="description" placeholder="Enter Description"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="image">Image</label>
                        <input type="file" class="form-control form-control-rounded" id="image" name="image" onchange="previewImage(event)">
                        <br>
                        <img id="image_preview" style="max-width: 200px; display: none;">
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

        function previewImage(event) {
            var imagePreview = document.getElementById('image_preview');
            var reader = new FileReader();
            reader.onload = function(){
                imagePreview.src = reader.result;
                imagePreview.style.display = 'block';
            }
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>
</x-app-layout>
