<x-app-layout>
    <style>
        .ck-editor__editable_inline {
            color: black;
        }
    </style>
    <div class="col-lg-12">
        <br>
        <h2>Add Question and Answer</h2>
        <br>
        <div class="card">
            <div class="card-body">
                <form action="{{ route('faq.store') }}" method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="title">Question</label>
                        <input type="text" class="form-control form-control-rounded" id="question" name="question" placeholder="Enter Question" style="color: black !important;">
                    </div>

                    <div class="form-group">
                        <label for="description">Answer</label>
                        <textarea class="form-control form-control-rounded" id="answer" name="answer" placeholder="Enter Answer"></textarea>
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-light btn-round px-5">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Include CKEditor script -->
    <script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            ClassicEditor
                .create(document.querySelector('#answer'))
                .catch(error => {
                    console.error(error);
                });
        });
    </script>
</x-app-layout>
