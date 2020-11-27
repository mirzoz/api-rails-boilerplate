Rails.application.routes.draw do
  root 'home#index'
  scope :api, defaults: { format: :json } do
    scope :v1 do
      devise_for :users, controllers: {
        registrations: 'api/v1/registrations',
        sessions: 'api/v1/sessions',
      }
      devise_scope :user do
        get 'users/current', to: 'sessions#show'
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :accounts
    end
  end
end
