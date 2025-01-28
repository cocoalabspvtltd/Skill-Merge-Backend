<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Selection Process</h2>
        <br>
        <a href="{{ route('selection-process.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add</a>
        <div class="card">
            <div class="card-body">
                <p>{{ $selectionProcessDetails->banner_title }}  <a href="{{ route('selection-processDetails.edit',['data'=>$selectionProcessDetails->id])}}"
                    data-toggle="tooltip"
                    title="Edit Banner Title">
                    <i class="fas fa-pencil-alt ml-2" style="cursor: pointer;"></i>
                 </a></p>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($selectionProcess as $items)
                                <tr>

                                    <td>{{ $items->title }}</td>
                                    <td>{!! Str::limit($items->description, 40, ' ...') !!}</td>
                                    <td>
                                        <a href="{{ route('selection-process.edit', ['process' => $items->id]) }}" class="btn btn-warning btn-sm">Edit</a>
                                        <form action="{{ route('selection-process.destroy', ['process'=> $items->id]) }}" method="POST" style="display:inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this item?');">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
