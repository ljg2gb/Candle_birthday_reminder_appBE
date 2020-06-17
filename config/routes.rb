Rails.application.routes.draw do
  resources :friends
  resources :users
  
  resources :users, only: [:index, :show, :create] do
    resources :friends
  end

  post "login", to: "authentication#login"
  get "profile", to: "users#profile"
end
