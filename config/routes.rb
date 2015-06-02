PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  resources :posts, except: [:destroy] do
    resources :comments, only: [:create]
  end
  resources :users, except: [:destroy]
  # get '/posts', to: 'posts#index'
  # get '/posts/:id', to: 'posts#show'
  # get '/posts/new', to: 'posts#new'
  # get '/posts/create', to: 'posts#create'
  # patch '/posts/:id/edit', to: 'posts#edit'
  # patch '/posts/:id', to: 'posts#update'
end
