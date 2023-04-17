<script>
    const sendEmail = (payload) => {
        $.ajax('/sendEmail', {
            method: 'post',
            data: payload,
            success: (data, status) => {
                console.log(data);
                // window.location.reload();
            }
        })
    }
    $(() => {
        $('#saveDraft').click(() => {
            sendEmail({
                'content': myEditor.getContent(),
                'label': $('#subject-input').val(),
                'sent_to': $('#sentTo').val(),
                'cc': $('#ccTo').val(),
                'bcc': $('#bccTo').val()
            })
        })
        $('#sendEmail').click(() => {
            sendEmail({
                'content': myEditor.getContent(),
                'label': $('#subject-input').val(),
                'sent_to': $('#sentTo').val(),
                'cc': $('#ccTo').val(),
                'bcc': $('#bccTo').val()
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