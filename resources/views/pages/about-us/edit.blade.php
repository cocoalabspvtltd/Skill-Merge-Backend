<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Update Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('about-us.update', ['aboutUs' => $aboutUs->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="input-6">Title</label>
                        <input type="text" class="form-control form-control-rounded" name="title" placeholder="Enter title" style="color: black !important;" value="{{ $aboutUs->title }}">
                    </div>
                    <div class="form-group">
                        <label for="input-6">Description</label>
                        <textarea class="form-control form-control-rounded" id="input-6" name="description" placeholder="Enter Your Description">{{ $aboutUs->description }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="input-7">Vision</label>
                        <textarea class="form-control form-control-rounded" id="input-7" name="vision" placeholder="Enter Your vision">{{ $aboutUs->vision }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="input-8">Mission</label>
                        <textarea class="form-control form-control-rounded" id="input-8" name="mission" placeholder="Enter Your mission">{{ $aboutUs->mission }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="input-9">Core Values</label>
                        <textarea class="form-control form-control-rounded" id="input-9" name="core_values" placeholder="Enter Your core values">{{ $aboutUs->core_values }}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="input-9">Image</label>
                        @if ($aboutUs->about_image)
                            <div>
                                <img src="{{ asset('storage/' . $aboutUs->about_image) }}" alt="About Image" class="img-fluid mt-2" width="150">
                                <br>
                                <button type="button" class="btn btn-warning btn-round mt-2" onclick="document.getElementById('about_image').click();">Update Image</button>
                                <input type="file" class="form-control form-control-rounded d-none" id="about_image" name="about_image">
                            </div>
                        @else
                            <input type="file" class="form-control form-control-rounded" name="about_image">
                        @endif
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
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
                console.log('Core Values editor was initialized', editor);
            })
            .catch(error => {
                console.error('Error initializing Core Values editor', error);
            });
    </script>
</x-app-layout>
