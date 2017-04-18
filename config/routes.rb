Rails.application.routes.draw do
  resources :kvs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'kvs#index'
end
