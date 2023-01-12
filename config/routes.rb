Rails.application.routes.draw do
  root 'users#index'
  resources :users
  namespace :api do
    namespace :v1 do
      get 'user/index'
      post 'user/create_user'
      delete 'user/delete_user'
      put 'user/edit_user'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end