$().ready ->
	$(".speaker").click ->
  	$(".speaker, .summary p").removeClass "active"
  	$(this).addClass "active"
  	speaker = $(this).attr('id')
  	$(".summary img").removeClass('active')
  	$(".summary img.#{speaker}").addClass('active')
  	$("p.#{speaker}").addClass('active')

  $('.image-gallery').fancybox()
  $('.image-video').fancybox()
  $(".scott-slides").live 'click', ->
    $("#scott-slides").addClass('erase')
    $("#scott-slides").dialog()
    $("#scott-slides").removeClass('erase')
  $(".aaron-slides").live 'click', ->
    $("#aaron-slides").dialog()
  $(".nic-slides").live 'click', ->
    $("#nic-slides").dialog()


  # Keynote action buttons
  $('section.keynote').on 'click', '.bar-line .keynote-action-icon', ->
    currentSpeaker = $('.speaker.active').attr('id')
    if @id is 'keynote-gallery'
      $(".#{currentSpeaker}-gallery a:first").click()
    if @id is 'keynote-video'
      $(".#{currentSpeaker}-video a:first").click()
    if @id is 'keynote-slides'
      $(".#{currentSpeaker}-slides ").click()
