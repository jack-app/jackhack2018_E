Rails.application.routes.draw do
  resources :gommis
  # get 'home/root'
  root 'home#root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
