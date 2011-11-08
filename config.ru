require ::File.dirname(__FILE__) + '/config/boot.rb'

def app
    Magazine::Controller
end

map "/" do
    run Magazine::Controller
end
