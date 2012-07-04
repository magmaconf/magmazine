Magmazine::Application.routes.draw do

  scope 'admin' do
    devise_for :users

    resources :contents, module: :admin
  end

  scope "(:language)", locale: /en|es/ do
    match ':page', to: 'static#show', as: 'page'
  end

  root to: 'static#show', defaults: { page: 'magmazine' }

end
#== Route Map
# Generated on 03 Jul 2012 18:03
#
#             user_session POST   /admin/users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /admin/users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /admin/users/password(.:format)      devise/passwords#create
#        new_user_password GET    /admin/users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /admin/users/password/edit(.:format) devise/passwords#edit
#                          PUT    /admin/users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /admin/users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /admin/users(.:format)               devise/registrations#create
#    new_user_registration GET    /admin/users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /admin/users/edit(.:format)          devise/registrations#edit
#                          PUT    /admin/users(.:format)               devise/registrations#update
#                          DELETE /admin/users(.:format)               devise/registrations#destroy
#                 contents GET    /admin/contents(.:format)            admin/contents#index
#                          POST   /admin/contents(.:format)            admin/contents#create
#              new_content GET    /admin/contents/new(.:format)        admin/contents#new
#             edit_content GET    /admin/contents/:id/edit(.:format)   admin/contents#edit
#                  content GET    /admin/contents/:id(.:format)        admin/contents#show
#                          PUT    /admin/contents/:id(.:format)        admin/contents#update
#                          DELETE /admin/contents/:id(.:format)        admin/contents#destroy
#                     page        (/:language)/:page(.:format)         static#show {:locale=>/en|es/}
#                     root        /                                    static#show {:page=>"magmazine"}
