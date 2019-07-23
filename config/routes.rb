Rails.application.routes.draw do
  resources :recipes, only: [:index, :new, :show, :create]
end
