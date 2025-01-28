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
                        <label for="icon_image">Logo</label>
                        @if ($data->icon_image)
                            <div>
                                <img src="{{ asset('storage/' . $data->icon_image) }}" alt="{{ $data->title }}" width="150">
                                <br>
                                <button type="button" class="btn btn-warning btn-round mt-2" onclick="document.getElementById('icons').click();">Update Icons</button>
                                <input type="file" class="form-control d-none" id="icon_image" name="icon_image">
                            </div>
                        @else
                            <input type="file" class="form-control" id="icon_image" name="icon_image">
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
    </script>
</x-app-layout>
