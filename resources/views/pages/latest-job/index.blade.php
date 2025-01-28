<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Latest Jobs</h2>
        <br>
        <a href="{{ route('latest-jobs.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add</a>
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Company Name</th>
                                <th>Position</th>
                                <th>Location</th>
                                <th>Details</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($jobs as $items)
                                <tr>

                                    <td>{{ $items->company }}</td>
                                    <td>{{ $items->position }}</td>
                                    <td>{{ $items->location }}</td>
                                    <td>{!! Str::limit($items->details, 40, ' ...') !!}</td>
                                    <td>
                                        <a href="{{ route('latest-jobs.edit', ['latest_job' => $items->id]) }}" class="btn btn-warning btn-sm">Edit</a>
                                        <form action="{{ route('latest-jobs.destroy', ['latest_job'=> $items->id]) }}" method="POST" style="display:inline;">
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
