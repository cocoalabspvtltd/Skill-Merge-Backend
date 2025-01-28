<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Add Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('about-us.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="input-6">Title</label>
                       <input type="text" class="form-control form-control-rounded" name="title" placeholder="Enter title" style="color: black !important;">
                    </div>
                    <div class="form-group">
                        <label for="input-6">Description</label>
                        <textarea class="form-control form-control-rounded" id="input-6" name="description"
                            placeholder="Enter Your Description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="input-7">Vision</label>
                        <textarea class="form-control form-control-rounded" id="input-7" name="vision" placeholder="Enter Your vision"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="input-8">Mission</label>
                        <textarea class="form-control form-control-rounded" id="input-8" name="mission" placeholder="Enter Your mission"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="input-9">Core Values</label>
                        <textarea class="form-control form-control-rounded" id="input-9" name="core_values"
                            placeholder="Enter Your core values"></textarea>
                    </div>



                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5"> Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    {{-- <script>
        // Initialize CKEditor for the specified textarea fields
        CKEDITOR.replace('input-6');
        CKEDITOR.replace('input-7');
        CKEDITOR.replace('input-8');
        CKEDITOR.replace('input-9');
      </script> --}}

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

        ClassicEditor
            .create(document.querySelector('#input-7'))
            .then(editor => {
                console.log('Vision editor was initialized', editor);
            })
            .catch(error => {
                console.error('Error initializing Vision editor', error);
            });

        ClassicEditor
            .create(document.querySelector('#input-8'))
            .then(editor => {
                console.log('Mission editor was initialized', editor);
            })
            .catch(error => {
                console.error('Error initializing Mission editor', error);
            });

        ClassicEditor
            .create(document.querySelector('#input-9'))
            .then(editor => {
                console.log('Mission editor was initialized', editor);
            })
            .catch(error => {
                console.error('Error initializing Mission editor', error);
            });
    </script>

</x-app-layout>
