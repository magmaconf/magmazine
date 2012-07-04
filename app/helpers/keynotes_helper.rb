module KeynotesHelper
   def render_keynote_actions
     action_buttons = ''
     [:video, :slides, :gallery].each do |action|
       action_buttons +=  content_tag(:s, '' ,class: 'keynote-action-icon' ,id: "keynote-#{action}")
     end
     action_buttons.html_safe
   end

   def speakers
    {
      scott: ['scott1.jpg','scott2.jpg','scott3.jpg','scott4.jpg'],
      aaron: ['aaron1.jpg','aaron2.jpg','aaron3.jpg','aaron4.jpg'],
      nic: ['nic1.jpg','nic2.jpg','nic3.jpg','nic4.jpg']
    }
   end

   def coming
    {
      scott: ['coming.jpg'],
      aaron: ['coming.jpg'],
      nic: ['coming.jpg']
    }
   end
end
