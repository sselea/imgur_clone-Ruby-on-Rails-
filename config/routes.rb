Rails.application.routes.draw do


  root to: "posts#index"

  resources :sessions, :only => [:new, :create, :destroy]
  resources :users, :only => [:show, :new, :create, :edit, :destroy] 
	resources :posts do
		collection do
			get "search/:term" => "posts#search"
		end
		resources :comments, :only => [:show, :create, :destroy, :update]
	end
	resources :categories

end
