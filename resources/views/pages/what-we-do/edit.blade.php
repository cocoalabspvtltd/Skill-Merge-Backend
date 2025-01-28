<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Edit Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('what-we-do.update',['data'=>$data->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" value="{{ $data->title }}" required>
                    </div>
                    <div class="form-group">
                        <label for="url">Description</label>
                        <textarea class="form-control form-control-rounded" name="description" id="description" cols="20" rows="5">{{ $data->description }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="icons">Image</label>
                         @if ($data->icons)
                            <div>
                                <img src="{{ asset('storage/app/public/' . $data->icons) }}" alt="{{ $data->title }}" width="150" id="preview-image">
                                <br>
                                <button type="button" class="btn btn-warning btn-round mt-2" onclick="document.getElementById('icons').click();">Update Image</button>
                                <input type="file" class="form-control d-none" id="icons" name="icons" accept="image/*">
                            </div>
                        @else
                            <input type="file" class="form-control" id="icons" name="icons" accept="image/*">
                            <img id="preview-image" src="#" alt="Image preview" style="display: none;" width="150">
                        @endif
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div>

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
            document.getElementById('icons').addEventListener('change', function(e) {
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
