Rails.application.routes.draw do
  resources :solutions

  resources :surveys do
    get 'answers', on: :member
  end
  resources :participants
  root 'surveys#index'
end
