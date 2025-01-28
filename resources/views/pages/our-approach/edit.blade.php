<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Add Our Approach</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('our-approach.update',['data' => $data->id]) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title" placeholder="Enter Title" style="color: black !important;" value="{{ $data->title }}">
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control form-control-rounded" id="description" name="description" placeholder="Enter Description">{{ $data->description }}</textarea>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
