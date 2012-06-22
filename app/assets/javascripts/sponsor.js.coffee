$().ready ->
  $(".spon").click ->
    $(".spon, .sponsoring span").removeClass "active"
    $(this).addClass "active"
    spon = $(this).attr('id')
    $(".sponsoring span").removeClass('active')
    $(".sponsoring span.#{spon}").addClass('active')
    $("div.#{spon}").addClass('active')
