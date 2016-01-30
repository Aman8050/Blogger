Blog::Application.routes.draw do
  resources :post
  root 'post#index'
  #match ':controller(/:action(/:id))',:via => :get
  
end
