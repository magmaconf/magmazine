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
    $("#scott-slides").dialog().css({width:"500px", height: "400px", margin: "0 0 600px 0"}).show().find("iframe").css({width:"500px", height: "400px"})
  $(".aaron-slides").live 'click', ->
    $("#aaron-slides").dialog().css({width:"500px", height: "400px", margin: "0 0 600px 0"}).show().find("iframe").css({width:"500px", height: "400px"})
  $(".nic-slides").live 'click', ->
    $("#nic-slides").dialog().css({width:"500px", height: "400px", margin: "0 0 600px 0"}).show().find("iframe").css({width:"500px", height: "400px"})


  # Keynote action buttons
  $('section.keynote').on 'click', '.bar-line .keynote-action-icon', ->
    currentSpeaker = $('.speaker.active').attr('id')
    if @id is 'keynote-gallery'
      $(".#{currentSpeaker}-gallery a:first").click()
    if @id is 'keynote-video'
      $(".#{currentSpeaker}-video a:first").click()
    if @id is 'keynote-slides'
      $(".#{currentSpeaker}-slides ").click()
