$().ready ->
  $(".spon").click ->
    $(".spon, .sponsoring div").removeClass "active"
    $(this).addClass "active"
    spon = $(this).attr('id')
    $(".sponsoring a").removeClass('active')
    $(".sponsoring a.#{spon}").addClass('active')
    $("div.#{spon}").addClass('active')
