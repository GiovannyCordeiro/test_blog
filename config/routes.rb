Rails.application.routes.draw do
  root "posts#index"
  resource :article, only: %i[ new ]
end
