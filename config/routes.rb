Magmazine::Application.routes.draw do

  resources :static, only: :show

  get "home/magmazine"
  get "es/editorial"
  get "/es/tweets"
  get "/es/conferencias"
  get "/en/sponsor"
  get "/es/patrocinadores"
  get "/es/galeria"
  get "/es/infografia"
  get "en/editorial"
  get "/en/infography"
  get "/en/gallery"
  get "/en/keynote"
  get "/en/tweets"
  get "/en/community"
  get "/es/comunidad"

  root to: 'home#magmazine'
end
