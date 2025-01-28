<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Add Slider</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('homeSlider.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title" style="color:black !important;">
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea type="text" class="form-control form-control-rounded" id="description" name="description" placeholder="Enter Description" style="color:black !important;"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="image">Image</label>
                        <input type="file" class="form-control form-control-rounded" id="image" name="image">
                    </div>

                    <div class="form-group">
                        <label for="pdf_url">Upload PDF</label>
                        <input type="file" class="form-control form-control-rounded" id="pdf_url" name="pdf_url" placeholder="upload pdf">
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
