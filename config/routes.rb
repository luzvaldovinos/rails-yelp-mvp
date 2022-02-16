Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/restaurants', to: 'restuarants#index'
  # get 'restuarants/new', to: 'restaurants#new', as: :new_restauarant
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  resources :restaurants, only: [ :index, :show, :new, :create] do
    resources :review, only: [:view, :create]
  end
end
