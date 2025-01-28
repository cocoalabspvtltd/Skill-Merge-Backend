<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Aminities</h2>
        <a href="{{ route('aminities.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add</a>
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
                                    @if($items->icon_image)
                                        <img src="{{ asset('storage/app/public/' . $items->icon_image) }}" alt="{{ $items->title }}" width="100">
                                    @else
                                        No image
                                    @endif
                                </td>
                                <td>{{ $items->title }}</td>
                                <td>
                                    <a href="{{ route('global-certification-partners.edit', ['data' => $items->id ]) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('global-certification-partners.destroy',['data'=> $items->id ]) }}" method="POST" style="display:inline;">
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

