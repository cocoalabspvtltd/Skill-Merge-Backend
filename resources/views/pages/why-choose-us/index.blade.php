<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Why Choose Us</h2>
        <a href="{{ route('why-choose-us.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add</a>
        <br>
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Title</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $items)
                            <tr>
                                <td>
                                    @if($items->icon_image)
                                    <img src="https://skillmerge.in/backend/storage/app/public/{{ $items->icon_image }}" alt="{{ $items->title }}" width="100">

                                        <!--<img src="{{ asset('storage/' . $items->icon_image) }}" alt="{{ $items->title }}" width="100">https://hungerfreeworld.in/skill-merge/storage/app/public/whyChooseUs_icons/SVaI1aCPpbJPsTVOtyYaQ5Sodw1qsefRfAi3SSSA.png-->
                                    @else
                                        No image
                                    @endif
                                </td>
                                <td>{{ $items->title }}</td>
                                <td>
                                    <a href="{{ route('why-choose-us.edit', ['data' => $items->id ]) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('why-choose-us.destroy',['data'=> $items->id ]) }}" method="POST" style="display:inline;">
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

