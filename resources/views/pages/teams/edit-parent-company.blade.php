<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Edit Parent Company</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('parent-company.update', ['id' => $team->id, 'index' => $index]) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="input-1">Title</label>
                        <input type="text" class="form-control form-control-rounded" name="title" placeholder="Enter title" value="{{ $parentCompany['title'] }}">
                    </div>
                    <div class="form-group">
                        <label for="input-2">Logo</label><br><br>
                        <input type="file" class="form-control form-control-rounded" name="icon_image"><br>
                        @if($parentCompany['icon_image'])
                            <img src="{{ asset('storage/' . $parentCompany['icon_image']) }}" alt="{{ $parentCompany['title'] }} logo" style="width: 200px;">
                        @endif
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Update</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</x-app-layout>
