Rails.application.routes.draw do
  resources :toys, only: [:index, :create, :update, :destroy]
  
  patch "/toys/like/:id", to: "toys#increment_likes"
end
