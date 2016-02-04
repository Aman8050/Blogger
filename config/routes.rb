Blog::Application.routes.draw do
  devise_for :users
  resources :posts do
  	resources :comments
  end
  

  root 'posts#index'
  
  get '/discuss', to: 'discusses#index'
  get '/about', to: 'pages#about'
  get '/contact', to: 'contact#team_recursion'
  get '/tutorials', to: 'tutorials#tutorial'
  match ':controller(/:action(/:id))',:via => :get
  
end
