Rails.application.routes.draw do
  root "posts#index"
  resource :posts, only: %i[ new create ]
end
