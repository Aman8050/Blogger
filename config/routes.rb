Blog::Application.routes.draw do
  resources :posts
  root 'posts#index'
  match ':controller(/:action(/:id))',:via => :get
  
end
