Rails.application.routes.draw do
  get 'characters/index'
  resources :characters
  resources :crews

  root 'characters#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
