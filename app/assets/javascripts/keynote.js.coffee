$().ready ->
	$(".speaker").click ->
  	$(".speaker, .summary p").removeClass "active"
  	$(this).addClass "active"
  	speaker = $(this).attr('id')
  	$(".summary img").removeClass('active')
  	$(".summary img.#{speaker}").addClass('active')
  	$("p.#{speaker}").addClass('active')

  $('.image-gallery').fancybox()

  # Keynote action buttons
  $('section.keynote').on 'click', '.bar-line .keynote-action-icon', ->

    currentSpeaker = $('.speaker.active').attr('id')

    if @id is 'keynote-gallery'
      $(".#{currentSpeaker}-slides a:first").click()
