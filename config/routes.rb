Rails.application.routes.draw do
  devise_for :users
  root "foods#index"
  resources :foods do
    resource :likes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
