<!-- resources/views/pages/programs/index.blade.php -->

<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Internship Programs</h2>
        <br>
        <div style="display: flex; align-items: center;">
            <h3>{{ $programDetails->banner_title }}</h3>
            <a href="{{ route('programsDetails.edit',['data'=>$programDetails->id] ) }}" class="ml-2">
                <i class="zmdi zmdi-edit"></i>
            </a>
        </div>
        <br>
        <a href="{{ route('programs.create') }}" class="btn btn-primary btn-sm" style="float:right; margin-top: -36px;">Add New Program</a>
        @if(session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        <div class="card">

            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Program Title</th>
                            <th>Program Details</th>
                            <th>Program Image</th>
                            <th>Courses</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($internshipPrograms as $internshipProgram)
                            <tr>
                                <td>{{ $internshipProgram->title }}</td>
                                <td>{!! Str::limit($internshipProgram->program_details, 40, ' ...') !!}</td>
                                <td><img src="{{ asset('storage/app/public/' . $internshipProgram->image) }}" alt="{{ $internshipProgram->title }}" width="100"></td>
                                <td>
                                    @foreach ($internshipProgram->coursePrograms as $courseProgram)
                                        <strong>Course Title:</strong> {{ $courseProgram->course_title }}<br>
                                        <strong>Duration:</strong> {{ $courseProgram->duration }}<br>
                                        <strong>Advance Amount:</strong> {{ $courseProgram->advance_amount }}<br>
                                        <strong>Monthly Amount:</strong> {!! Str::limit($courseProgram->monthly_amount,40,'...') !!}<br><br>
                                        <strong>Deliverables:</strong> {!! Str::limit($courseProgram->deliverables,40,'...') !!}<br>
                                        <hr>
                                    @endforeach
                                </td>
                                <td>
                                    <a href="{{ route('programs.edit', $internshipProgram->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                    <form action="{{ route('programs.destroy', $internshipProgram->id) }}" method="POST" style="display:inline-block;">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
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
