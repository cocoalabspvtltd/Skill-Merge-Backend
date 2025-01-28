<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Update Why Choose Us</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('why-choose-us.update',['data' => $data->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title" style="color: black !important;" value="{{ $data->title}}">
                    </div>

                    <div class="form-group">
                        <label for="icon_image">Icon Image</label>
                        @if ($data->icon_image)
                            <div>
                                <img src="{{ asset('storage/app/public/' . $data->icon_image) }}" alt="{{ $data->title }}" width="150" id="preview-image">
                                <br>
                                <button type="button" class="btn btn-warning btn-round mt-2" onclick="document.getElementById('icon_image').click();">Update Image</button>
                                <input type="file" class="form-control d-none" id="icon_image" name="icon_image">
                            </div>
                        @else
                            <input type="file" class="form-control" id="icon_image" name="icon_image">
                        @endif
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
     <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
    <script>
       
       // Image preview function
            document.getElementById('icon_image').addEventListener('change', function(e) {
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
