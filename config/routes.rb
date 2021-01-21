Rails.application.routes.draw do
  root "restaurants#index"

  resources :restaurants do
    resources :dishes
  end
end
