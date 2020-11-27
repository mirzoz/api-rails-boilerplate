# frozen_string_literal: false


module Api
  module V1
    class RegistrationsController < Devise::SessionsController
      def create
        user = User.new(user_params)

        if user.save
          render json: user, status: 201
        else
          render json: { errors: user.errors }, status: 422
        end
      end

      private

      def user_params
        params.require(:user).permit(:email, :password, :firstname, :lastname)
      end
    end
  end
end