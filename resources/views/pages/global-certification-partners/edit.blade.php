<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Add Certification Partners Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('global-certification-partners.update',['data'=>$data=>id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="icon_image">Logo Image</label>
                        <input type="file" class="form-control form-control-rounded" id="logo" name="logo">
                        <img id="preview-image" src="#" alt="Logo Image Preview" style="display: none; width: 150px; margin-top: 10px;">
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
     <script>
        document.addEventListener("DOMContentLoaded", function() {
            document.getElementById('logo').addEventListener('change', function(e) {
                if (e.target.files && e.target.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        var previewImage = document.getElementById('preview-image');
                        previewImage.src = e.target.result;
                        previewImage.style.display = 'block';
                    };
                    reader.readAsDataURL(e.target.files[0]);
                }
            });
        });
    </script>
</x-app-layout>
