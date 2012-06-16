$().ready ->
	$(".speaker").click ->
  	$(".speaker, .summary p").removeClass "active"
  	$(this).addClass "active"
  	speaker = $(this).attr('id')
  	$(".summary img").removeClass('active')
  	$(".summary img.#{speaker}").addClass('active')
  	$("p.#{speaker}").addClass('active')