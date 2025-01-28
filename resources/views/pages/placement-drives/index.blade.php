<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Placement Drives</h2>
        <a href="{{ route('placement-drives.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add</a>
        <br>
        <div class="card">
            <div class="card-body">
                @if ($data->isEmpty())
                <p>No Data found.</p>
            @else
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Logo</th>
                            <th>Title</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $items)
                            <tr>
                                <td>
                                    @if($items->logo)
                                        <img src="{{ asset('storage/app/public/' . $items->logo) }}" alt="{{ $items->title }}" width="100">
                                    @else
                                        No image
                                    @endif
                                </td>
                                <td>{{ $items->title }}</td>
                                <td>
                                    <a href="{{ route('placement-drives.edit', ['data' => $items->id ]) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('placement-drives.destroy',['data'=> $items->id ]) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this item?');">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                @endif
            </div>
        </div>
    </div>
</x-app-layout>

