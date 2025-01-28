<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Edit Slider</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('homeSlider.update', ['slider' => $slider->id]) }}" method="POST"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control" id="title" name="title" style="background-color: rgba(0, 0, 0, .2) !important;" value="{{ $slider->title }}" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea type="text" class="form-control form-control-rounded" id="description" name="description" placeholder="Enter Description" style="background-color: rgba(0, 0, 0, .2) !important;">{{ $slider->description }}</textarea>
                    </div>
                    <div class="form-group" id="pdf-preview">
                        <label for="pdf_display">PDF Preview</label>
                        <embed id="pdf-embed" src="{{ asset('storage/app/public/' . $slider->pdf_url) }}" width="100%" height="500px" type="application/pdf">
                        <br>
                        <button type="button" class="btn btn-warning btn-round mt-2" onclick="document.getElementById('pdf_url').click();">Update PDF</button>
                        <input type="file" class="form-control d-none" id="pdf_url" name="pdf_url" onchange="updatePdfPreview(this)">
                    </div>
                    <div class="form-group"  id="image-preview">
                        <label for="image">Image</label>
                        @if ($slider->image)
                        <div>
                            <img id="image-tag" src="{{ asset('storage/app/public/' . $slider->image) }}" alt="{{ $slider->title }}" width="150">
                            <br>
                            <button type="button" class="btn btn-warning btn-round mt-2" onclick="document.getElementById('image').click();">Update Image</button>
                            <input type="file" class="form-control d-none" id="image" name="image" onchange="updateImagePreview(this)">
                        </div>
                        @else
                            <input type="file" class="form-control" id="image" name="image">
                        @endif
                    </div>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div>
    <script>
        function updatePdfPreview(input) {
            if (input.files && input.files[0]) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementById('pdf-preview').style.display = 'block';
                    document.getElementById('pdf-embed').src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

        function updateImagePreview(input) {
            if (input.files && input.files[0]) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementById('image-preview').style.display = 'block';
                    document.getElementById('image-tag').src = e.target.result;
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</x-app-layout>
