Magmazine::Application.routes.draw do

  scope "(:language)", locale: /en|es/ do
    match ':page', to: 'static#show', as: 'page'
  end

  root to: 'static#show', defaults: { page: 'magmazine' }

end
