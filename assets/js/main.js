;(function(){
  $('#h .subscribe-input').focus();
  // open external links externally
  $('body').on('click', 'a[href^="//"], a[href^="http"], a[href^="mailto"]', function() {
    window.open($(this).attr('href'));
    return false;
  });
})(jQuery)