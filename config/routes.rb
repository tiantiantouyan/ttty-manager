Rails.application.routes.draw do
  if Rails.env.development?
    devise_for :users
  else
    devise_for :users, controllers: {registrations: 'registrations'}
  end

  resources :kvs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'kvs#index'
end
