Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  resources :users, except: [:index] do
    resources :recipes
  end

  get "/recipes", to: "recipes#index", as: 'recipes'
end
