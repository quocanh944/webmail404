let editor = async () => {
    return await tinymce.init({
        selector: '#myTextarea',
        width: "100%",
        height: 300,
        plugins: [
            'advlist', 'autolink', 'link', 'image', 'lists', 'charmap', 'preview', 'anchor', 'pagebreak',
            'searchreplace', 'insertdatetime',
            'media', 'emoticons', 'help'
        ],
        toolbar: 'undo redo | styles | bold italic | alignleft aligncenter alignright alignjustify | ' +
            'bullist numlist outdent indent | link image | print preview media fullscreen | ' +
            'forecolor backcolor emoticons | help',
        menu: {
            favs: { title: 'My Favorites', items: 'code visualaid | searchreplace | emoticons' }
        },
        setup: function (editor) {
            editor.on('change', function () {
                editor.save();
            });
        },
        menubar: 'favs file edit view insert format tools table help',
        // content_css: 'css/content.css'
    })
}


// Get the TinyMCE editor instance
// tinymce.get("myTextarea").addEventListener("change", (e) => {
//     console.log(e)
// });

let myEditor = undefined

editor().then((e) => {
    myEditor = e[0]
})