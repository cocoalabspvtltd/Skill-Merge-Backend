<!-- resources/views/programs/create.blade.php -->

<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Add Candidate Sections Process and Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('selection-process.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    {{-- <!-- Selection Process Details -->
                    <h3>Selection Process Details</h3>
                    <div class="form-group">
                        <label for="banner_title">Banner Title</label>
                        <input type="text" class="form-control form-control-rounded" id="banner_title" name="banner_title" placeholder="Enter Banner Title" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="banner_description">Banner Description</label>
                        <input type="text" class="form-control form-control-rounded" id="banner_description" name="banner_description" placeholder="Enter Banner Description">
                    </div> --}}

                    <!-- Processes -->
                    <h3>Processes</h3>
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title"  style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control form-control-rounded" id="description" name="description" placeholder="Enter Description"></textarea>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
