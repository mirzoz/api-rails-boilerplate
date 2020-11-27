# frozen_string_literal: false


module Api
  module V1
    class SessionsController < Devise::SessionsController
      def create
        self.resource = warden.authenticate!(auth_options)
        set_flash_message(:notice, :signed_in) if is_flashing_format?
        sign_in(resource_name, resource)
        yield resource if block_given?
        respond_with resource, :location => after_sign_in_path_for(resource) do |format|
          format.json {render :json => UserSerializer.new(resource).serializable_hash } # this code will get executed for json request
        end
      end

      def show; end

      private

      def current_token
        request.env['warden-jwt_auth.token']
      end
    end
  end
end