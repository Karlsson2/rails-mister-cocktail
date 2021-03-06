Rails.application.routes.draw do
  root "cocktails#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :create, :new, :destroy] do
    resources :doses, only: [:create, :new]
  end
  resources :doses, only:[:destroy]
end
