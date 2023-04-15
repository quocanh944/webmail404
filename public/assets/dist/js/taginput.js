(function($){
    var methods = {
        init: function (options){
            // add our input tag
            $(this).html(`<span class="tags-wrapper ${options.addTags}"></span><input text="" class="${options.addTags}" name="${options.addTags}" id="${options.addTags}" placeholder="${options.tagInputPlaceholder}" value="" autocomplete="off"/>`)
            
            // initialize tags
            $.each(options.initialTags, function(_, value){
                addTag(value, options.tagBackgroundColor, options.tagColor, options.tagBorderColor, options.tagHiddenInput, options.addTags)
            });
  
            // focus on our input on the container clicked
            $(this).parent().click(function(){
                $("." + options.addTags).focus();
            })
  
             // add tag on key down
            $("." + options.addTags).keydown(function (evt) {
                if ((evt.keyCode == 32) | (evt.keyCode == 9)) {
                    var tag = $.trim($(this).val());
                    if (tag.length < 1) {
                        return false;
                    }
                    addTag(tag, options.tagBackgroundColor, options.tagColor, options.tagBorderColor, options.tagHiddenInput, options.addTags)
                    $(this).val("");
                    $(this).focus();
                }
            });
  
             // remove tag on close icon click
            $(document).on("click", ".tag-remove." + options.addTags, function () {
                var tag = $(this).attr("tag");
                $(`[tag-title='${tag+options.addTags}']`).remove();
                copyTags(options.tagHiddenInput, options.addTags + '_');
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
    function addTag(tagName, tagBackgroundColor, tagColor, tagBorderColor, tagHiddenInput, addTags){
        if(!$(`[tag-title='${tagName+addTags}']`).length){
          var tagHTML = `<span style="background-color: ${tagBackgroundColor}; color: ${tagColor}; border-color: ${tagBorderColor}" class="tags ${addTags + '_'}" tag-title="${tagName}${addTags}">
          ${tagName}
          <a title="Remove tag" class="tag-remove ${addTags} " tag="${tagName}">
              <i class="fa fa-times"></i>
          </a>
          </span>`;
          $(".tags-wrapper." + addTags).append(tagHTML);
          copyTags(tagHiddenInput, addTags + '_')
        }
    }
  
    // add tag to the hidden input
    function copyTags(tagHiddenInput, addTags){
        var listOfTags = [];
        $(".tags." + addTags).each(function () {
            if (!listOfTags.includes($(this).text().trim())) {
                listOfTags.push($(this).text().trim());
            }
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