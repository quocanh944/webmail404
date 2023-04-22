function Setting() {
  this.maxRecipients = "";
  this.maxEmailSize = "";
  this.maxAttachments = "";
  this.maxAttachmentSize = "";
}


document.querySelector('#btnSaveSetting').onclick = () => {
  const maxRecipientsInput = document.querySelector('#maxRecipientsInput');
  const maxSizeInput = document.querySelector('#maxSizeInput');
  const maxAttachmentsInput = document.querySelector('#maxAttachmentsInput');
  const maxAttachmentSizeInput = document.querySelector('#maxAttachmentSizeInput');

  const maxRecipients = parseInt(maxRecipientsInput.value);
  const maxSize = parseInt(maxSizeInput.value);
  const maxAttachments = parseInt(maxAttachmentsInput.value);
  const maxAttachmentSize = parseInt(maxAttachmentSizeInput.value);

  // Check max recipients
  if (maxRecipients < 1) {
    alert('Max recipients must be greater equal than 1');
    return;
  }

  // Check max email size
  if (maxSize < 1) {
    alert('Max email size must be greater equal than 1');
    return;
  }

  // Check max attachments
  if (maxAttachments < 1) {
    alert('Max attachments must be greater equal than 1');
    return;
  }

  // Check max attachment size
  if (maxAttachmentSize < 1) {
    alert('Max attachment size must be greater equal than 1');
    return;
  }

  let setting = new Setting();
  setting.maxRecipients = maxRecipients;
  setting.maxEmailSize = maxSize;
  setting.maxAttachments = maxAttachments;
  setting.maxAttachmentSize = maxAttachmentSize;

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
