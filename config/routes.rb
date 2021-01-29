Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :restaurants do
  	require "sidekiq/web"
  	mount Sidekiq::Web => '/sidekiq'
    resources :dishes
  end

end
