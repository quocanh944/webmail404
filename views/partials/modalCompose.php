<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="compose-modal-label" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="d-none modal-title" id="compose-modal-label">New Email</h5>
        <h5 class="modal-title" id="compose-modal-label">New Email</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="subject-input">Subject:</label>
            <input type="text" class="form-control" id="subject-input" name="subject">
          </div>
          <div class="form-group" id="tags-input-group">
            <label>To: </label>
            <div id="input_to" class="form-control mb-2"></div>
            <input type="text" class="inputTags" id="sentTo" hidden />
          </div>
          <div class="form-group" id="tags-input-group">
            <label>Cc: </label>
            <div id="input_cc" class="form-control mb-2"></div>
            <input type="text" class="inputTags" id="ccTo" hidden />
          </div>
          <div class="form-group" id="tags-input-group">
            <label>Bcc: </label>
            <div id="input_bcc" class="form-control mb-2"></div>
            <input type="text" class="inputTags" id="bccTo" hidden />
          </div>
          <div class="form-group">
            <textarea class="w-100" id="myTextarea"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-secondary" id="saveDraft">Save Draft</button>
        <button type="button" class="btn btn-primary" id="sendEmail">Send</button>
      </div>
    </div>
  </div>
</div>