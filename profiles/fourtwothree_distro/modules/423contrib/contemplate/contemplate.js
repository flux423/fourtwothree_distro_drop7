function insertAtCursor(myField, myValue) {
  //IE support
  if (document.selection) {
    myField.focus();
    sel = document.selection.createRange();
    sel.text = myValue;
  }

  //MOZILLA/NETSCAPE support
  else if (myField.selectionStart || myField.selectionStart == '0') {
    var startPos = myField.selectionStart;
    var endPos = myField.selectionEnd;
    myField.value = myField.value.substring(0, startPos)
                  + myValue
                  + myField.value.substring(endPos, myField.value.length);
  } else {
    myField.value += myValue;
  }
  return false;
}

(function ($) {

  // calling the function
  // insertAtCursor(document.formName.fieldName, ‘this value’);

  Drupal.contemplate = new Object();

  Drupal.behaviors.contemplate = {
    attach: function(context) {
      $("input[id*=enable]:not(.contemplate-preprocessed)").addClass('contemplate-preprocessed').change(function () {
        var target = $(this).attr('rel').replace(/.*toggletarget\|([-#a-z]*).*/, '$1');
        if ($(this).is(':checked')) {
          $(target).removeAttr('disabled');
          $(target).focus();
        }
        else {
          $(target).attr('disabled', true);
        }
        $(target + '-keys').css('opacity', $(this).is(':checked') ? 1 : .2);
      });
    // allow the user to preview the template as they are editing

      $('input#edit-teaser-preview:not(.contemplate_processed), input#edit-body-preview:not(.contemplate_processed)')
      .addClass('contemplate_processed').click(function() {
        var id = $(this).attr('id');
        var template = '';
        var type = '';
        switch(id) {
          case 'edit-body-preview':
            template = $('#edit-bodyfield').val();
            type = 'full';
            break;
          case 'edit-teaser-preview':
            template = $('#edit-teaserfield').val();
            type = 'teaser';
            break;
        }
        $.post(Drupal.settings.basePath + 'contemplate/ajax/preview/' + Drupal.settings.contemplate.example_nid + '/' + type, template, function(data) {
          $('#' + id).parent().find('div.messages').remove();
          $('#' + id).parent().find('div.content').remove();
          $('#' + id).after('<div class="content">' + data.content + '</div>').after(data.messages);
          Drupal.attachBehaviors();
        }, 'json');
        return false;
      });
    }
  }

})(jQuery);
