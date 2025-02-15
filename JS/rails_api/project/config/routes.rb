Rails.application.routes.draw do
  root to: 'static_pages#root'
  namespace :api , defaults: { format: :json } do
    resources :todos, only: [:index, :create, :update, :show, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
