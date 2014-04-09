(function ($) {
  'use strict';

  $(document).ready(function () {
    // $('#intro').zoomTarget();
    var step = 0;
    var timing = 650;

    var forward = function (e) {
      if (e.keyCode === 34 || e.keyCode === 39 || (e.keyCode === 32 && e.shiftKey === false)) {
        return true;
      }
      else {
        return false;
      }
    }

    var backward = function (e) {
      if (e.keyCode === 33 || e.keyCode === 37 || (e.keyCode === 32 && e.shiftKey === true)) {
        return true;
      }
      else {
        return false;
      }
    }

    //////////////////////////////
    // Watch for Keydown
    //////////////////////////////
    document.querySelector('body').addEventListener('keydown', function (e) {
      e.preventDefault();

      if (forward(e)) {
        steps('forward');
      }
      else if (backward(e)) {
        steps('backward');
      }
    });

    //////////////////////////////
    // Steps
    //////////////////////////////
    var steps = function (direction) {
      if (direction === 'forward') {
        step++;
      }
      else {
        step--;
      }

      if (step < 0) {
        step = 0;
      }
      else if (step > 5) {
        step = 0;
      }

      $('main article:nth-of-type(' + step + ')').zoomTo();
    };


  });
})(window.jQuery);