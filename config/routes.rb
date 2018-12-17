Rails.application.routes.draw do
  
  root   'questions#index'
  get    'search', to: 'questions#search'

  resources :questions do

    resources :answers, except: [:index, :show, :new] do
      resources :comments, module: :answers, except: [:index, :show]
      resources :votes,    module: :answers, only: [:create, :destroy]
    end

    resources :comments, module: :questions, except: [:index, :show]
    resources :votes,    module: :questions, only: [:create, :destroy]
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
