module KeynotesHelper
   def render_keynote_actions
     action_buttons = ''
     [:video, :slides, :gallery].each do |action|
       action_buttons +=  content_tag(:s, '' ,class: 'keynote-action-icon' ,id: "keynote-#{action}")
     end
     action_buttons.html_safe
   end
end
