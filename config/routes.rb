Rails.application.routes.draw do 
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users, controllers: { registrations: "registrations" }
  root 'pages#timeline'
  resources :users, only: [:show] do 
    member do 
      get :following
      ger :followers
    end
  end
  resources :relationships, only: [:create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
