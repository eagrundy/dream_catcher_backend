Rails.application.routes.draw do
  resources :dreams
  resources :categories
  # , only: [:index, :show] do
  #   resources :dreams, only: [:create, :index]
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
