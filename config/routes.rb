IvanTheTerriblesBlog::Application.routes.draw do


  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :replies
  end

  root :to => 'posts#index'
  get '/indexall', to: 'posts#indexall', as: 'indexall'

end

