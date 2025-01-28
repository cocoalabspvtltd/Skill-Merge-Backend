<x-app-layout>

    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="row mt-3">
                <div class="col-lg-4">
                    <div class="card profile-card-2">
                        <div class="card-img-block">
                            <img class="img-fluid" src="{{ asset('storage/app/public/' . $data->about_image) }}" alt="About Image" width= "85%">
                        </div>
                        <div class="card-body pt-5">
                            <h5 class="card-title">{{$data->title}}</h5>
                            <p class="card-text">{!! $data->description !!}</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-body">
                            <ul class="nav nav-tabs nav-tabs-primary top-icon nav-justified">
                                <li class="nav-item">
                                    <a href="javascript:void();" data-target="#vision" data-toggle="pill" class="nav-link active">
                                        <i class="icon-eye"></i> <span class="hidden-xs">Vision</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="javascript:void();" data-target="#mission" data-toggle="pill" class="nav-link">
                                        <i class="icon-target"></i> <span class="hidden-xs">Mission</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="javascript:void();" data-target="#values" data-toggle="pill" class="nav-link">
                                        <i class="icon-heart"></i> <span class="hidden-xs">Core Values</span>
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content p-3">
                                <div class="tab-pane active" id="vision">
                                    <h5 class="mb-3">Vision</h5>
                                    <p>{!! $data->vision !!}</p>
                                </div>
                                <div class="tab-pane" id="mission">
                                    <h5 class="mb-3">Mission</h5>
                                    <p>{!! $data->mission !!}</div>
                                <div class="tab-pane" id="values">
                                    <h5 class="mb-3">Core Values</h5>
                                    <p>{!! $data->core_values !!}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="form-group">
            <a href="{{ route('about-us.edit',['aboutUs' =>$data->id]) }}" class="btn btn-primary">Edit</a>
        </div>

        <!-- End container-fluid-->
    </div>

</x-app-layout>
