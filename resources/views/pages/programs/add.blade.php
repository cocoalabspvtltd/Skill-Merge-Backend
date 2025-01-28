<!-- resources/views/programs/create.blade.php -->
<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }

        .ck-editor__editable_inline h1,
        .ck-editor__editable_inline h2,
        .ck-editor__editable_inline h3,
        .ck-editor__editable_inline h4,
        .ck-editor__editable_inline h5,
        .ck-editor__editable_inline h6 {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Add Internship Program and Courses</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('programs.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <!-- Internship Program -->
                    <h3>Internship Program</h3>
                    <div class="form-group">
                        <label for="title">Program Title</label>
                        <input type="text" class="form-control form-control-rounded" id="title" name="title"
                            placeholder="Enter Program Title" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="program_details">Program Details</label>
                        <textarea class="form-control form-control-rounded" name="program_details"
                            placeholder="Enter Program Details"></textarea>
                    </div>

                     <!-- Key-Value Pairs -->
                     <h3>Program Key Details</h3>
                     <div id="key-details-container">
                         <div class="key-detail">
                             <div class="form-group">
                                 <label for="key_title">Key Title</label>
                                 <input type="text" class="form-control form-control-rounded" name="key_title[]"
                                     placeholder="Enter Key Title" style="color: black !important;">
                             </div>

                             <div class="form-group">
                                 <label for="key_description">Key Description</label>
                                 <textarea class="form-control form-control-rounded" name="key_description[]"
                                     placeholder="Enter Key Description"></textarea>
                             </div>
                         </div>
                     </div>

                     <button type="button" id="add-key-detail" class="btn btn-light btn-round px-5">Add Another Key Detail</button><br>

                    <div class="form-group"><br>
                        <label for="image">Program Image</label>
                        <input type="file" class="form-control form-control-rounded" id="image" name="image"
                            style="color: black !important;">
                    </div>
                    <!-- Course Programs -->
                    <h3>Course Programs</h3>
                    <div id="course-programs-container">
                        <div class="course-program">
                            <div class="form-group">
                                <label for="course_title">Course Title</label>
                                <input type="text" class="form-control form-control-rounded"
                                    name="course_programs[0][course_title]" placeholder="Enter Course Title"
                                    style="color: black !important;">
                            </div>

                            <div class="form-group">
                                <label for="course_duration">Course Duration</label>
                                <input type="text" class="form-control form-control-rounded"
                                    name="course_programs[0][course_duration]" placeholder="Enter Course Duration"
                                    style="color: black !important;">
                            </div>

                            <div class="form-group">
                                <label for="advance_amount">Advance Amount</label>
                                <input type="text" class="form-control form-control-rounded"
                                    name="course_programs[0][advance_amount]" placeholder="Enter Advance Amount">
                            </div>

                            <div class="form-group">
                                <label for="monthly_amount">Monthly Amount</label>
                                <input type="text" class="form-control form-control-rounded"
                                    name="course_programs[0][monthly_amount]" placeholder="Enter Monthly Amount">
                            </div>

                            <div class="form-group">
                                <label for="deliverables">Deliverables</label>
                                <textarea class="form-control form-control-rounded" name="course_programs[0][deliverables]"
                                    placeholder="Enter Deliverables"></textarea>
                            </div>
                        </div>
                    </div>

                    <button type="button" id="add-course-program" class="btn btn-light btn-round px-5">Add Another Course Program</button>

                    <div class="form-group"><br>
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            let keyDetailIndex = 1;
            let courseProgramIndex = 1;

            document.getElementById('add-key-detail').addEventListener('click', function() {
                const container = document.getElementById('key-details-container');
                const newKeyDetail = document.createElement('div');
                newKeyDetail.classList.add('key-detail');
                newKeyDetail.innerHTML = `
                    <div class="form-group">
                        <label for="key_title">Key Title</label>
                        <input type="text" class="form-control form-control-rounded" name="key_title[]" placeholder="Enter Key Title" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="key_description">Key Description</label>
                        <textarea class="form-control form-control-rounded" name="key_description[]" placeholder="Enter Key Description"></textarea>
                    </div>
                `;
                container.appendChild(newKeyDetail);
                keyDetailIndex++;
                // Initialize CKEditor for the new textarea
                ClassicEditor.create(newKeyDetail.querySelector('textarea'), {
                    heading: {
                        options: [
                            { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                            { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                            { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                            { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                            { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                            { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                            { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                        ]
                    },
                    ckfinder: {
                        uploadUrl: '/upload/image'
                    }
                }).catch(error => {
                    console.error('Error initializing editor', error);
                });
            });

            document.getElementById('add-course-program').addEventListener('click', function() {
                const container = document.getElementById('course-programs-container');
                const newCourseProgram = document.createElement('div');
                newCourseProgram.classList.add('course-program');
                newCourseProgram.innerHTML = `
                    <div class="form-group">
                        <label for="course_title">Course Title</label>
                        <input type="text" class="form-control form-control-rounded" name="course_programs[${courseProgramIndex}][course_title]" placeholder="Enter Course Title" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="course_duration">Course Duration</label>
                        <input type="text" class="form-control form-control-rounded" name="course_programs[${courseProgramIndex}][course_duration]" placeholder="Enter Course Duration" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="advance_amount">Advance Amount</label>
                        <input type="text" class="form-control form-control-rounded" name="course_programs[${courseProgramIndex}][advance_amount]" placeholder="Enter Advance Amount">
                    </div>

                    <div class="form-group">
                        <label for="monthly_amount">Monthly Amount</label>
                        <input type="text" class="form-control form-control-rounded" name="course_programs[${courseProgramIndex}][monthly_amount]" placeholder="Enter Monthly Amount">
                    </div>

                    <div class="form-group">
                        <label for="deliverables">Deliverables</label>
                        <textarea class="form-control form-control-rounded" name="course_programs[${courseProgramIndex}][deliverables]" placeholder="Enter Deliverables"></textarea>
                    </div>
                `;
                container.appendChild(newCourseProgram);
                ClassicEditor.create(newCourseProgram.querySelector('textarea'), {
                    heading: {
                        options: [
                            { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                            { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                            { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                            { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                            { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                            { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                            { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                        ]
                    },
                    ckfinder: {
                        uploadUrl: '/upload/image'
                    }
                }).catch(error => {
                    console.error('Error initializing editor', error);
                });
                courseProgramIndex++;
            });

            // Initialize CKEditor for all existing textareas
            document.querySelectorAll('textarea').forEach(textarea => {
                ClassicEditor.create(textarea, {
                    heading: {
                        options: [
                            { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                            { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                            { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                            { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                            { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                            { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                            { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                        ]
                    },
                    ckfinder: {
                        uploadUrl: '/upload/image'
                    }
                }).catch(error => {
                    console.error('Error initializing editor', error);
                });
            });

            document.getElementById('remove-image')?.addEventListener('click', function() {
                document.getElementById('image-preview').src = '';
                document.getElementById('image').value = ''; // Clear the file input
                document.getElementById('remove-image').style.display = 'none'; // Hide the remove button
            });
        });
    </script>
</x-app-layout>
