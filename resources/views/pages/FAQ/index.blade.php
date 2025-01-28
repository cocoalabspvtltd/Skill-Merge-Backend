<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Hackverse Data</h2>
        <br>
        <a href="{{ route('faq.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add</a>
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Question</th>
                            <th>Answer</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($faq as $items)
                            <tr>
                                <td>{{ $items->question }}</td>
                                <td>{!! Str::limit($items->answer, 40, ' ...') !!}</td>
                                <td>
                                    <a href="{{ route('faq.edit', ['faq' => $items->id ]) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('faq.destroy',['faq'=> $items->id ]) }}" method="POST" style="display:inline;">
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

