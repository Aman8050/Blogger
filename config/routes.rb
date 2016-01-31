Blog::Application.routes.draw do
  resources :posts do
  	resources :comments
  end
  root 'posts#index'
  match ':controller(/:action(/:id))',:via => :get
  
end
