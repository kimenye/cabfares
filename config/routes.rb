Cabfares::Application.routes.draw do
  resources :fares


  resources :cabs


  resources :queries


  root :to => "home#index"
  devise_for :users
end
