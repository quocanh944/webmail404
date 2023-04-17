function Setting() {
  this.maxRecipients = "";
  this.maxEmailSize = "";
  this.maxAttachments = "";
  this.maxAttachmentSize = "";
}


document.querySelector('#btnSaveSetting').onclick = () => {
  let setting = new Setting();
  setting.maxRecipients = parseInt(document.querySelector('#maxRecipientsInput').value);
  setting.maxEmailSize = parseInt(document.querySelector('#maxSizeInput').value);
  setting.maxAttachments = parseInt(document.querySelector('#maxAttachmentsInput').value);
  setting.maxAttachmentSize = parseInt(document.querySelector('#maxAttachmentSizeInput').value);

  $.ajax({
    url: '/updateSetting',
    method: 'POST',
    contentType: 'application/json',
    data: JSON.stringify({
      'settingUpdate': setting
    }),
    success: function (response) {
      response = JSON.parse(response)
      if (!response.success) {
        alert(response.message);
        return;
      }
      else {
        alert('Update setting successfully')
      }
    },
    error: function (xhr, status, error) {
      console.error(`Request failed. Returned status of ${xhr.status}`);
    }
  });
}
