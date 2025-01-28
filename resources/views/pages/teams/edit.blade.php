<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Edit Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form id="detailsForm" method="POST" action="{{ route('teams.update', $team->id) }}"
                    enctype="multipart/form-data">
                    @csrf
                    @method('PUT')

                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control form-control-rounded" name="description" id="description" cols="20" rows="5">{{ $team->description }}</textarea>
                    </div>

                    <div id="achievementsContainer">
                        <h3>Achievements</h3>
                        @if ($team->achievements)
                            @foreach ($team->achievements as $index => $achievement)
                                <div class="achievement" id="achievement_{{ $index }}">
                                    <div class="form-group">
                                        <label for="achievement_title_{{ $index }}">Title</label>
                                        <input type="text" class="form-control form-control-rounded"
                                            name="achievement_title[{{ $index }}]"
                                            value="{{ $achievement['title'] }}" placeholder="Enter Achievement Title"
                                            style="color: black !important;">
                                    </div>
                                    <div class="form-group">
                                        <label for="achievement_description_{{ $index }}">Description</label>
                                        <textarea class="form-control form-control-rounded" name="achievement_description[{{ $index }}]"
                                            placeholder="Enter Achievement Description">{{ $achievement['description'] }}</textarea>
                                    </div>
                                    <button type="button" class="btn btn-danger btn-round"
                                        onclick="deleteAchievement({{ $index }})">Delete</button>
                                </div>
                            @endforeach
                        @endif
                    </div>
                    <button type="button" id="addAchievementBtn" class="btn btn-light btn-round">Add
                        Achievement</button><br>
                    <br>
                    <div id="partnersContainer">
                        <h3>Partners</h3>
                        @if ($team->parent_companies)
                            @foreach ($team->parent_companies as $index => $partner)
                                <div class="partner" id="partner_{{ $index }}">
                                    <div class="form-group">
                                        <label for="partner_title_{{ $index }}">Title</label>
                                        <input type="text" class="form-control form-control-rounded"
                                            name="partner_title[{{ $index }}]" value="{{ $partner['title'] }}"
                                            placeholder="Enter Partner Title" style="color: black !important;">
                                    </div>
                                    <div class="form-group">
                                        <label for="partner_icon_{{ $index }}">Icon Image</label>
                                        <input type="file" class="form-control form-control-rounded"
                                            name="partner_icon[{{ $index }}]">
                                        <input type="hidden" name="partner_icon_existing[{{ $index }}]"
                                            value="{{ $partner['icon_image'] }}">
                                        @if ($partner['icon_image'])
                                            <img src="{{ asset('storage/app/public/' . $partner['icon_image']) }}"
                                                alt="{{ $partner['title'] }}"
                                                style="max-height: 100px; margin-top: 10px;">
                                        @endif
                                    </div>
                                    <button type="button" class="btn btn-danger btn-round"
                                        onclick="deletePartner({{ $index }})">Delete</button>
                                </div>
                            @endforeach
                        @endif
                    </div>
                    <button type="button" id="addPartnerBtn" class="btn btn-light btn-round">Add Partner</button><br>

                    <br>
                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function initializeCKEditor(element) {
            ClassicEditor
                .create(element)
                .then(editor => {
                    console.log('Editor was initialized', editor);
                })
                .catch(error => {
                    console.error('Error initializing editor', error);
                });
        }

        function deleteAchievement(index) {
            const achievementElement = document.getElementById('achievement_' + index);
            if (achievementElement) {
                achievementElement.remove();
            }
        }

        function deletePartner(index) {
            const partnerElement = document.getElementById('partner_' + index);
            if (partnerElement) {
                partnerElement.remove();
            }
        }

        // Initialize CKEditor for all existing textarea fields
        document.querySelectorAll('textarea').forEach(textarea => {
            initializeCKEditor(textarea);
        });

        document.getElementById('addAchievementBtn').addEventListener('click', function() {
            const container = document.getElementById('achievementsContainer');
            const newAchievement = document.createElement('div');
            newAchievement.classList.add('achievement');
            newAchievement.innerHTML = `
                <div class="form-group">
                    <label for="achievement_title">Title</label>
                    <input type="text" class="form-control form-control-rounded" name="achievement_title[]" placeholder="Enter Achievement Title" style="color: black !important;">
                </div>
                <div class="form-group">
                    <label for="achievement_description">Description</label>
                    <textarea class="form-control form-control-rounded" name="achievement_description[]" placeholder="Enter Achievement Description"></textarea>
                </div>
            `;
            container.appendChild(newAchievement);

            // Initialize CKEditor for the newly added textarea
            newAchievement.querySelectorAll('textarea').forEach(textarea => {
                initializeCKEditor(textarea);
            });
        });

        document.getElementById('addPartnerBtn').addEventListener('click', function() {
            const container = document.getElementById('partnersContainer');
            const newPartner = document.createElement('div');
            newPartner.classList.add('partner');
            newPartner.innerHTML = `
                <div class="form-group">
                    <label for="partner_title">Title</label>
                    <input type="text" class="form-control form-control-rounded" name="partner_title[]" placeholder="Enter Partner Title" style="color: black !important;">
                </div>
                <div class="form-group">
                    <label for="partner_icon">Icon Image</label>
                    <input type="file" class="form-control form-control-rounded" name="partner_icon[]">
                </div>
            `;
            container.appendChild(newPartner);
        });
    </script>

</x-app-layout>
