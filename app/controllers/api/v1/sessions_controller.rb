# frozen_string_literal: false

module Api
  module V1
    class SessionsController < Devise::SessionsController
      before_action :authenticate_user!, only: :show

      def create
        resource = authenticate
        yield resource if block_given?
        respond_with resource,
                     location: after_sign_in_path_for(resource) do |format|
          format.json do
            render json: resource
          end
        end
      end

      def show
        render json: current_user
      end

      private

      def authenticate
        resource = warden.authenticate!(auth_options)
        set_flash_message(:notice, :signed_in) if is_flashing_format?
        sign_in(resource_name, resource)
        resource
      end

      def current_token
        request.env['warden-jwt_auth.token']
      end
    end
  end
end
