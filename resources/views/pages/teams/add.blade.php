<x-app-layout>

    <div class="col-lg-12">
        <br>
        <h2>Add Details</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form id="detailsForm" method="POST" action="{{ route('teams.store') }}" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="input-6">Description</label>
                        <textarea class="form-control  form-control-rounded" name="description" id="" cols="20" rows="5"></textarea>
                    </div>

                    <!-- Achievements -->
                    <div id="achievementsContainer">
                        <h3>Achievements</h3>
                        <div class="achievement">
                            <div class="form-group">
                                <label for="achievement_title">Title</label>
                                <input type="text" class="form-control form-control-rounded" name="achievement_title[]" placeholder="Enter Achievement Title" style="color: black !important;">
                            </div>
                            <div class="form-group">
                                <label for="achievement_description">Description</label>
                                <textarea class="form-control form-control-rounded" name="achievement_description[]" placeholder="Enter Achievement Description"></textarea>
                            </div>
                        </div>
                    </div>
                    <button type="button" id="addAchievementBtn" class="btn btn-light btn-round">Add Achievement</button>

                    <!-- Partners -->
                    <div id="partnersContainer">
                        <h3>Partners</h3>
                        <div class="partner">
                            <div class="form-group">
                                <label for="partner_title">Title</label>
                                <input type="text" class="form-control form-control-rounded" name="partner_title[]" placeholder="Enter Partner Title" style="color: black !important;">
                            </div>
                            <div class="form-group">
                                <label for="partner_icon">Icon Image</label>
                                <input type="file" class="form-control form-control-rounded" name="partner_icon[]">
                            </div>
                        </div>
                    </div>
                    <button type="button" id="addPartnerBtn" class="btn btn-light btn-round">Add Partner</button>
                     <br>
                     <br>
                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('addAchievementBtn').addEventListener('click', function () {
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
        });

        document.getElementById('addPartnerBtn').addEventListener('click', function () {
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
