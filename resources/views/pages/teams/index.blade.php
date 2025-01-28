<x-app-layout>
    <div class="col-lg-12">
        <br>
        <h2>Our Teams</h2>
        <a href="{{ route('teams.edit',['team' => $data->id])}}" class="btn btn-primary btn-sm" style="float:right;     margin-top: -36px;">Edit</a>
        <br>
        <div class="card">
            <div class="card-body">

                <p>{!! $data->description !!}</p>

                <h4>Achievements</h4>
                <ul>
                    @foreach($achievements as $index => $achievement)
                        <li>
                            <h5>{{ $achievement['title'] }}</h5>
                            <p>{!! $achievement['description'] !!}</p>

                        </li>
                    @endforeach
                </ul>

                <h4>Parent Companies</h4>
                <ul>
                    @foreach($parentCompanies as $index => $company)
                        <li>
                            <h5>{{ $company['title'] }}</h5>
                            <img src="{{ asset('storage/app/public/' . $company['icon_image']) }}" alt="{{ $company['title'] }} logo" style="width: 100px;">

                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</x-app-layout>
