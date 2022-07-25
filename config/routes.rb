Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  # root to: 'pages#home'
  root to: 'bikes#show'

  get "bikes/new", to: "bikes#new", as: :new_bike
  post "bikes/", to: "bikes#create"
  get "bikes/:id/edit", to: "bikes#edit", as: :edit_bike
  get "bikes/:id", to: "bikes#show", as: :bike
  patch "bikes/:id", to: "bikes#update"
  delete "bikes/:id", to: "bikes#destroy"
end
