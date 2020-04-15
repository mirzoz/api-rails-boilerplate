Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: 'sessions' }
    devise_scope :user do
      get 'users/current', to: 'sessions#show'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :accounts
    end
  end
end
