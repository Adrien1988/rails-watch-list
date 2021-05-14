Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # faire une route home page
  # faire une route list avec index, show, new, create (resources: lists)
  root to: "lists#index"
  resources :lists, except: :index
  resources :lists, only: [:new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
