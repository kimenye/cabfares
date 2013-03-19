Cabfares::Application.routes.draw do
  resources :queries


  root :to => "home#index"
  devise_for :users
end
