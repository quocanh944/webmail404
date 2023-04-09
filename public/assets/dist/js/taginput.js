(function($){
    var methods = {
        init: function (options){
  
            // add our input tag
            $(this).html(`<span class="tags-wrapper"></span><input text="" class="add-tags" name="add-tags" id="add-tags" placeholder="${options.tagInputPlaceholder}" value="" autocomplete="off"/>`)
            
            // initialize tags
            $.each(options.initialTags, function(_, value){
                addTag(value, options.tagBackgroundColor, options.tagColor, options.tagBorderColor, options.tagHiddenInput)
            });
  
            // focus on our input on the container clicked
            $(this).parent().click(function(){
                $(".add-tags").focus();
            })
  
             // add tag on key down
            $(".add-tags").keydown(function (evt) {
                if ((evt.keyCode == 32) | (evt.keyCode == 9)) {
                    var tag = $.trim($(this).val());
                    if (tag.length < 1) {
                        return false;
                    }
                    addTag(tag, options.tagBackgroundColor, options.tagColor, options.tagBorderColor, options.tagHiddenInput)
                    $(this).val("");
                    $(this).focus();
                }
            });
  
             // remove tag on close icon click
            $(document).on("click", ".tag-remove", function () {
                var tag = $(this).attr("tag");
                $(`[tag-title='${tag}']`).remove();
                copyTags(options.tagHiddenInput);
                $(".tags-wrapper").focus();
            });
  
            return $(this).css({
                "border-color": options.tagContainerBorderColor,
                "border-width": ".1em",
                "border-style": "solid",
            });
        }
    };
  
    // add tag
    function addTag(tagName, tagBackgroundColor, tagColor, tagBorderColor, tagHiddenInput){
        if(!$(`[tag-title='${tagName}']`).length){
          var tagHTML = `<span style="background-color: ${tagBackgroundColor}; color: ${tagColor}; border-color: ${tagBorderColor}" class="tags" tag-title="${tagName}">
          ${tagName}
          <a title="Remove tag" class="tag-remove" tag="${tagName}">
              <i class="fa fa-times"></i>
          </a>
          </span>`;
          $(".tags-wrapper").append(tagHTML);
          copyTags(tagHiddenInput)
        }
    }
  
    // add tag to the hidden input
    function copyTags(tagHiddenInput){
        var listOfTags = [];
        $(".tags").each(function () {
          listOfTags.push($(this).text().trim());
        });
        tagHiddenInput.val(listOfTags.join(","));
    }
  
    // declare our tag input plugin
    $.fn.TagsInput = function (methodOrOptions){
        if( typeof methodOrOptions === 'object' || ! methodOrOptions ){
            return methods.init.apply(this, arguments)
        }
        else if ( methods[methodOrOptions] ) {
            return methods[ methodOrOptions ].apply(this, Array.prototype.slice.call(arguments, 1 ));
        }
        else {
            $.error( 'Method ' +  methodOrOptions + ' does not exist on jQuery.TagsInput' );
        }  
    }
  })( jQuery );