Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: %i[ new create show edit ]
end
