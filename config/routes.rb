Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, except: [:create]	 do
  	 resources :comments
  end
  post '/posts' , to: 'posts#create'
  root "posts#index"
end
