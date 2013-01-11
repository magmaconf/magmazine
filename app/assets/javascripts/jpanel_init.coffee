$ ->
  jPM = $.jPanelMenu(
    menu: '#menu-mobile'
    openPosition: '82%'
    animated: false
    beforeOpen: ->
      ($ '.menu-m').css 'left', '82%'
    beforeClose: ->
      ($ '.menu-m').css 'left', '0%'
  )

  jPM.on()
