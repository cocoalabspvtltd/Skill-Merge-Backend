<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Add Placement Drives Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('placement-drives.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="icon_image">Logo Image</label>
                        <input type="file" class="form-control form-control-rounded" id="logo" name="logo">
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
