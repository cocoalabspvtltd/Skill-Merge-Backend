<x-app-layout>
    <div class="col-lg-12">
        <br>
        <a href="{{ route('homeSlider.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: 17px;">Add</a>
        <h2>Slider List</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Image</th>
                            <th>Title</th>
                            <th>ESM PDF</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $slider)
                            <tr>
                                <td>
                                    @if($slider->image)
                                        <img src="{{ asset('storage/app/public/' . $slider->image) }}" alt="{{ $slider->title }}" width="100">
                                    @else
                                        No image
                                    @endif
                                </td>
                                <td>{{ $slider->title }}</td>
                                <td> @if($slider->pdf_url)
                                    <a href="{{ asset('storage/' . $slider->pdf_url) }}" target="_blank">View PDF</a>
                                @else
                                    No PDF
                                @endif</td>
                                <td>
                                    <a href="{{ route('homeSlider.edit', $slider->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('homeSlider.destroy', $slider->id) }}" method="POST" style="display:inline;">
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

