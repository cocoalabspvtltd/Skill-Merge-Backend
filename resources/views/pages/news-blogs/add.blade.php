<x-app-layout>
    <style>
        .ck-editor__editable h1,
.ck-editor__editable h2,
.ck-editor__editable h3,
.ck-editor__editable h4,
.ck-editor__editable h5,
.ck-editor__editable p ,ul,li{
    color: #000000 !important; /* Force headings to black */
}
.ck-editor__editable a{
    color: #FF0000 !important; /* Force headings to black */
}

    </style>
    <div class="col-lg-12">
        <br>
        <h2>Add News and Blogs</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('news-and-blogs.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control form-control-rounded" id="input-6" name="description" placeholder="Enter Your Description" ></textarea>
                    </div>

                    <div class="form-group">
                        <label for="image">Image</label>
                        <input type="file" class="form-control form-control-rounded" id="image" name="image">
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
    class MyCustomUploadAdapter {
        constructor(loader) {
            this.loader = loader;
        }

        upload() {
            return this.loader.file
                .then(file => {
                    console.log('Custom adapter file selected:', file);
                    
                    // Create a new FormData instance to send the file
                    const formData = new FormData();
                    formData.append('upload', file);

                    return new Promise((resolve, reject) => {
                        // Send a POST request to your backend upload route
                        fetch('{{ route("upload") }}', {
                            method: 'POST',
                            body: formData,
                            headers: {
                                'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
                            }
                        })
                        .then(response => response.json())
                        .then(data => {
                            if (data.url) {
                                // Resolve with the URL of the uploaded image
                                resolve({
                                     default: data.url
                                });
                            } else {
                                reject('Upload failed');
                            }
                            
                            const style = document.createElement('style');
                            style.textContent = `
                                .ck-content img {
                                    width: 100px !important;
                                    height: auto !important;
                                }
                            `;
                            document.head.appendChild(style);
                        })
                        .catch(err => {
                            console.error('Error uploading image:', err);
                            reject(err);
                        });
                    });
                });
        }

        abort() {
            console.log('Upload aborted.');
        }
    }

    // Custom adapter plugin
    function MyCustomUploadAdapterPlugin(editor) {
        editor.plugins.get('FileRepository').createUploadAdapter = loader => {
            return new MyCustomUploadAdapter(loader);
        };
    }

    // CKEditor Initialization
    ClassicEditor
        .create(document.querySelector('#input-6'), {
            toolbar: [
                'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote',
                'insertTable', '|', 'imageUpload', '|', 'undo', 'redo'
            ],
            heading: {
                options: [
                    { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                    { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                    { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                    { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' }
                ]
            },
            image: {
                toolbar: ['imageTextAlternative', 'imageStyle:full', 'imageStyle:side', 'linkImage'],
                upload: {
                    types: ['png', 'jpg', 'jpeg', 'gif', 'bmp', 'webp', 'tiff']
                }
            },
            extraPlugins: [MyCustomUploadAdapterPlugin] // Register the custom plugin
        })
        .then(editor => {
            console.log('Editor initialized successfully:', editor);
        })
        .catch(error => {
            console.error('Error initializing CKEditor:', error);
        });

    </script>

</x-app-layout>
