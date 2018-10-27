(function ($) {
  Drupal.behaviors.content_type_extras_cancel_button = {
    attach: function(context, settings) {
      var cancelButton = $('form.node-form [id^="edit-cancel"]');

      if (cancelButton.hasClass('cte-processed')) {
        return;
      }
      else {
        var hide_warning = settings.content_type_extras.hide_warning;

        cancelButton.addClass('cte-processed');
        cancelButton.click(function() {
          if (hide_warning == 0) {
            var answer = confirm(Drupal.t('Are you sure you want to cancel and lose all changes?'));
            if (answer) {
              cteExecuteCancel();
            }
          }
          else {
            cteExecuteCancel();
          }
        });
      }

      function cteExecuteCancel() {
        $.QueryString = (function(a) {
          if (a == "") return {};
          var b = {};
          for (var i = 0; i < a.length; ++i) {
            var p=a[i].split('=');
            if (p.length != 2) continue;
            b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
          }
          return b;
        })(window.location.search.substr(1).split('&'))

        var baseUrl = document.location.origin;

        if ($.QueryString["destination"]) {
          var destination = $.QueryString["destination"];
          $(location).attr('href', baseUrl + '/' + destination);
        }
        else {
          if (settings.content_type_extras.cancel_location == 'static_path') {
            window.location = settings.content_type_extras.location_path;
          }
          else {
            history.go(-1);
          }
        }
      }
    }
  }
})(jQuery);
