<!-- resources/views/programs/create.blade.php -->
<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Add Latest Jobs</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('latest-jobs.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="company">Company</label>
                        <input type="text" class="form-control form-control-rounded" id="company" name="company" placeholder="Enter Title"  style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="position">Position</label>
                        <input type="text" class="form-control form-control-rounded" id="position" name="position" placeholder="Enter Position"  style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="location">Location</label>
                        <input type="text" class="form-control form-control-rounded" id="location" name="location" placeholder="Enter Location"  style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="details">Details</label>
                        <textarea class="form-control form-control-rounded" id="details" name="details" placeholder="Enter Details"></textarea>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Include CKEditor script -->
    <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            ClassicEditor
                .create(document.querySelector('#details'))
                .catch(error => {
                    console.error(error);
                });
        });
    </script>
</x-app-layout>
