
<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Update Program Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('programsDetails.update',['data' =>$data->id]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                     @method('PUT')
                    <!-- Program Details -->
                    <h3>Program Details</h3>
                    <div class="form-group">
                        <label for="banner_title">Banner Title</label>
                        <input type="text" class="form-control form-control-rounded" id="banner_title" name="banner_title" placeholder="Enter Banner Title" style="color: black !important;" value="{{ $data->banner_title}}">
                    </div>

                    <div class="form-group">
                        <label for="banner_subtitle">Banner Subtitle</label>
                        <input type="text" class="form-control form-control-rounded" id="banner_subtitle" name="banner_subtitle" placeholder="Enter Banner Subtitle" style="color: black !important;" value="{{ $data->banner_subtitle}}">
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
