Rails.application.routes.draw do

  root to: "posts#index"
  resources :sessions, :only => [:new, :create, :destroy]
  resources :users, :only => [:show, :new, :create, :edit, :destroy]
 	resources :posts

end
