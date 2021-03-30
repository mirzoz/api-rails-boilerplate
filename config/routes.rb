Rails.application.routes.draw do
  root 'home#index'
  scope :api, defaults: { format: :json } do
    scope :v1 do
      devise_for :users, controllers: {
        registrations: 'api/v1/registrations',
        sessions: 'api/v1/sessions'
      }
      devise_scope :user do
        get 'users/me', to: 'api/v1/sessions#show'
        post 'users/password_resets', to: 'api/v1/password_resets#create'
        get 'users/reset_passwords/:token/edit', to: 'api/v1/password_resets#edit'
        patch 'users/reset_passwords/:token/', to: 'api/v1/password_resets#update'
      end
    end
  end

  # namespace :api do
  #   namespace :v1 do
  #   end
  # end
end
