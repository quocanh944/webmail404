<script>
    const sendEmail = (payload) => {
        // let data = new FormData(document.getElementById("form"));
        // data.getAll('attachment').forEach((e) => {
        //     console.log(e)
        // });
        // console.log(document.getElementById("form"));

        let data = new FormData(document.getElementById('form'));
        
        console.log(data.getAll('attachment'))

        $.ajax('/sendEmail', {
            method: 'post',
            data: new FormData(document.getElementById('form')),
            contentType: false,
            cache: false,
            processData:false,
            success: (data, status) => {
                console.log(data);
                console.log(data.Error);
                console.log(!(data.status == "success"));
                if (!(data.status == "success")) {
                    if (data.Error["Invalid Email"]) {
                        let msg = ""
                        for (let index = 0; index < data.Error["Invalid Email"].length; index++) {
                            const element = data.Error["Invalid Email"][index];
                            msg += element + ", "
                        }
                        alert("Invalid Email: " + msg)
                    } else {
                        alert(data.Error)
                    }
                } else {
                    // window.location.reload();
                }
            }
        })
    }

    const saveDraft = (payload) => {
        $.ajax('/saveDraft', {
            method: 'post',
            data: payload,
            success: (data, status) => {
                console.log(data);
                window.location.reload();
            }
        })
    }
    $(() => {
        $('#saveDraft').click(() => {
            saveDraft({
                'content': myEditor.getContent(),
                'label': $('#subject-input').val(),
                'sent_to': $('#sentTo').val(),
                'cc': $('#ccTo').val(),
                'bcc': $('#bccTo').val(),
                'attachments': $('#formFile').val()
            })
        })

        $('#sendEmail').click(() => {
            sendEmail({
                'content': myEditor.getContent(),
                'label': $('#subject-input').val(),
                'sent_to': $('#sentTo').val(),
                'cc': $('#ccTo').val(),
                'bcc': $('#bccTo').val(),
                'attachments': $('#formFile').val()
            })
        })

        $('#input_to').TagsInput({
            tagInputPlaceholder: 'eg. a@abc.com',
            tagHiddenInput: $('#sentTo'),
            tagContainerBorderColor: '#d3d3d3',
            tagBackgroundColor: '#ffffff',
            tagColor: '#000000',
            tagBorderColor: '#688eac',
            addTags: 'toTags'
        });

        $('#input_cc').TagsInput({
            tagInputPlaceholder: 'eg. a@abc.com',
            tagHiddenInput: $('#ccTo'),
            tagContainerBorderColor: '#d3d3d3',
            tagBackgroundColor: '#ffffff',
            tagColor: '#000000',
            tagBorderColor: '#688eac',
            addTags: 'ccTags'
        });

        $('#input_bcc').TagsInput({
            tagInputPlaceholder: 'eg. a@abc.com',
            tagHiddenInput: $('#bccTo'),
            tagContainerBorderColor: '#d3d3d3',
            tagBackgroundColor: '#ffffff',
            tagColor: '#000000',
            tagBorderColor: '#688eac',
            addTags: 'bccTags'
        });
    })
</script>