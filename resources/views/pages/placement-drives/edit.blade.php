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
                <form action="{{ route('placement-drives.update',['data'=>$data->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" value="{{ $data->title }}" required>
                    </div>

                    <div class="form-group">
                        <label for="logo">Logo</label>
                        @if ($data->logo)
                            <div>
                                <img src="{{ asset('storage/' . $data->logo) }}" alt="{{ $data->title }}" width="150">
                                <br>
                                <button type="button" class="btn btn-warning btn-round mt-2" onclick="document.getElementById('icons').click();">Update Logo</button>
                                <input type="file" class="form-control d-none" id="logo" name="logo">
                            </div>
                        @else
                            <input type="file" class="form-control" id="logo" name="logo">
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
