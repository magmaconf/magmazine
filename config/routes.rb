Magmazine::Application.routes.draw do

  scope 'admin' do
    devise_for :users
    match "/translations/:query", to: "admin/translations#index", query: /\D+/ , as: :filtered_translations
    match "/translations/:id/:query", to: "admin/translations#edit", query: /\D+/ , as: :edit_filtered_translations
    resources :translations, module: :admin, format: false

  end

  scope ":language", constraints: { language: /en|es/ } do
    match ':page', to: 'static#show', as: 'page'
  end

  root to: 'static#show', defaults: { page: 'magmazine' }

end
#== Route Map
# Generated on 10 Jul 2012 10:58
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
#    filtered_translations        /admin/translations/:query(.:format) admin/translations#index {:query=>/\D+/}
#             translations GET    /admin/translations                  admin/translations#index
#                          POST   /admin/translations                  admin/translations#create
#          new_translation GET    /admin/translations/new              admin/translations#new
#         edit_translation GET    /admin/translations/:id/edit         admin/translations#edit
#              translation GET    /admin/translations/:id              admin/translations#show
#                          PUT    /admin/translations/:id              admin/translations#update
#                          DELETE /admin/translations/:id              admin/translations#destroy
#                     page        /:language/:page(.:format)           static#show {:language=>/en|es/}
#                     root        /                                    static#show {:page=>"magmazine"}
