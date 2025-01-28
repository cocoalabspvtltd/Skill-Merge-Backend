<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Edit Achievement</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('achievement.update', ['id' => $team->id, 'index' => $index]) }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="input-1">Title</label>
                        <input type="text" class="form-control form-control-rounded" name="title" placeholder="Enter title" value="{{ $achievement['title'] }}">
                    </div>
                    <div class="form-group">
                        <label for="input-2">Description</label>
                        <textarea class="form-control form-control-rounded" id="input-6" name="description" placeholder="Enter description">{{ $achievement['description'] }}</textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Initialize CKEditor for specific textarea fields
        ClassicEditor
            .create(document.querySelector('#input-6'))
            .then(editor => {
                console.log('Description editor was initialized', editor);
            })
            .catch(error => {
                console.error('Error initializing Description editor', error);
            });
    </script>
</x-app-layout>
