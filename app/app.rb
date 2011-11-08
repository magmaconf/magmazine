require 'sinatra/base'
require 'sinatra/content_for'

module Magazine
    class Controller < Sinatra::Base
        helpers Sinatra::ContentFor
        
        set :views, APP_ROOT + '/app/views'
        set :public_folder, APP_ROOT + '/public' 
        set :root, APP_ROOT

        not_found do
            'Not found.'
        end

        get "/:language/:page" do |language, page|
            begin
                @language = language
                @nav = true

                haml :"#{language}/#{page}", :layout => :"mag-nov"
            rescue
                "Not found"
            end
        end

        get "/" do
            @nav = false
            haml :index, :layout => :"mag-nov"
        end
    end
end
