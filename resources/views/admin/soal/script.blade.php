<script src="{{url('cat')}}/summernote/summernote-bs4.min.js"></script>

<script>
         $(function() {
             
        $('#input').hide();
            // Summernote
            $('#question').summernote({
                toolbar: [
                    ['font', ['bold']],
                    ['para', ['ul', 'paragraph']],
                    ['view', ['fullscreen']],
                ],
                height: 100,
                placeholder: 'Soal....',
            })
            $('#option_1').summernote({
                toolbar: [
                    ['font', ['bold']],
                    ['para', ['ul', 'paragraph']],
                    ['view', ['fullscreen']],
                ],
                height: 100,
                placeholder: 'Pilihan A....',
            })
            $('#option_2').summernote({
                toolbar: [
                    ['font', ['bold']],
                    ['para', ['ul', 'paragraph']],
                    ['view', ['fullscreen']],
                ],
                height: 100,
                placeholder: 'Pilihan B...',
            })
            $('#option_3').summernote({
                toolbar: [
                    ['font', ['bold']],
                    ['para', ['ul', 'paragraph']],
                    ['view', ['fullscreen']],
                ],
                height: 100,
                placeholder: 'Pilihan C...',
            })
            $('#option_4').summernote({
                toolbar: [
                    ['font', ['bold']],
                    ['para', ['ul', 'paragraph']],
                    ['view', ['fullscreen']],
                ],
                height: 100,
                placeholder: 'Pilihan D...',
            })
            $('#option_5').summernote({
                toolbar: [
                    ['font', ['bold']],
                    ['para', ['ul', 'paragraph']],
                    ['view', ['fullscreen']],
                ],
                height: 100,
                placeholder: 'Pilihan E...',
            })
        })
</script>