Rails.application.routes.draw do
  #gommiクラスのアクションを設定するときはresorces :gommisよりも上に書かないとダメ
  get 'gommis/pick' => 'gommis#pick'
  get 'gommis/complete' => 'gommis#complete'
  get 'gommis/lttr' => 'gommis#lttr'
  get 'gommis' => 'home#root'
  resources :gommis
  # get 'home/root'
  root 'home#root'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
