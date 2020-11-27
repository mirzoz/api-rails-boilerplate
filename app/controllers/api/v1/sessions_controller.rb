# frozen_string_literal: false


module Api
  module V1
    class SessionsController < Devise::SessionsController
      def create
        super { @token = current_token }
      end

      def show; end

      private

      def current_token
        request.env['warden-jwt_auth.token']
      end
    end
  end
end