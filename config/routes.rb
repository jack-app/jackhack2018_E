Rails.application.routes.draw do
  #gommiクラスのアクションを設定するときはresorces :gommisよりも上に書かないとダメ
  get 'gommis/pick' => 'gommis#pick'
  get 'gommis/complete' => 'gommis#complete'
  get 'gommis/lttr' => 'gommis#lttr'
  get 'gommis' => 'home#root'
  get 'gommis/a1k2a34ik4e444i4k4e4i44k4e44go456347g437oy4a363y47a54t573o7t3o535s73a745s34a375s54i753s7543i4s5u43s73u34' => 'gommis#index'
  resources :gommis
  # get 'home/root
  root 'home#root'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
