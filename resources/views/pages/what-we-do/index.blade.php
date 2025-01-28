<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>What we Do</h2>
         <a href="{{ route('what-we-do.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add</a>
        <br>
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $items)
                            <tr>
                                <td>
                                    @if($items->icons)
                                        <img src="{{ asset('storage/app/public/' . $items->icons) }}" alt="{{ $items->title }}" width="100">
                                    @else
                                        No image
                                    @endif
                                </td>
                                <td>{{ $items->title }}</td>
                                <td>{!! Str::limit($items->description, 40, ' ...') !!}</td>
                                <td>
                                   
                                    <a href="{{ route('what-we-do.edit', ['data' => $items->id ]) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('what-we-do.destroy',['data'=> $items->id ]) }}" method="POST" style="display:inline;">
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
</x-app-layout>

