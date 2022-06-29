Rails.application.routes.draw do
  root 'reminds#index'
  resources :reminds
  match "/mark/:id", to: "reminds#mark", via: :put


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
