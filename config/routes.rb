Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  root to:"prototypes#index"
  resources :prototypes   do
    resources :comments, only: :create   do
    end  
  end
  resources :users, only: :show
end
