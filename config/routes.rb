Rails.application.routes.draw do

  resources :books do
    collection do
      get 'search'
    end
  end
  # userページ
  resources :user, only: [:index, :show] do
    member do
      get 'followings'
      get 'followers'
      post 'follow'
    end
  end
  # get 'user/index'
  #
  # get 'user/show'
  # get '/user/:id', to: 'user#show'
  # get '/user/:id/followings', to: 'user#followings'
  # get '/user/:id/followers', to: 'user#followers'

  get 'search/index'
  get 'search/user'
  get 'search/tip'

  resources :tips
  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'pages#index'
  get 'pages/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
