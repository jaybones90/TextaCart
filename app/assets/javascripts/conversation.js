$(document).ready(function(){
  $('.conversation-tile').click(function(){
    if ($(this).hasClass('blink_me')) {
      $(this).removeClass('blink_me')
    }
  })
})
