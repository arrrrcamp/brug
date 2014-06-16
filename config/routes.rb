Brug::Application.routes.draw do
  get 'auth/:provider/callback' => 'sessions#create'
  get 'auth/failure' => redirect('/')
  get 'signout' => 'sessions#destroy', as: 'signout'

  resources :gatherings do
    get 'join' => 'participations#join'
    get 'leave' => 'participations#leave'
  end

  resource :profile

  get '/blog'  => 'pages#blog'
  get '/about' => 'pages#about'
  get '/community' => 'pages#community'

  root 'gatherings#index'
end
