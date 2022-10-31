Rails.application.routes.draw do
  resources :posts do
    resources :comments
  end

  # resources :meetings, only: [:index , :create, :show]
  # get 'meetings/zoom_api' 
  get "/meetings/zoom_api", to: "meetings#zoom_api"
  resources :users
  post '/auth/login', to: 'authentication#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
