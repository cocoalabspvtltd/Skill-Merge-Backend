<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>News and Blogs</h2>
        <br>
        <a href="{{ route('news-and-blogs.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add</a>
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
                                    @if($items->image)
                                        <img src="{{ asset('storage/app/public/' . $items->image) }}" alt="{{ $items->title }}" width="100">
                                    @else
                                        No image
                                    @endif
                                </td>
                                <td>{{ $items->title }}</td>
                                <td>{!! Str::limit($items->description, 40, ' ...') !!}</td>
                                <td>
                                    <a href="{{ route('news-and-blogs.edit', ['newsandBlogs' => $items->id ]) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('news-and-blogs.destroy',['newsandBlogs'=> $items->id ]) }}" method="POST" style="display:inline;">
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

