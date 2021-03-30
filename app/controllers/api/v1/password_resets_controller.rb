# frozen_string_literal: false

module Api
  module V1
    class PasswordResetsController < ::ApplicationController
      before_action :set_user, only: %I[edit update]

      def create
        user = User.find_by(email: params[:user][:email])
        if user
          user.generate_password_token!
          UserMailer.reset_password(user).deliver_now
          render json: :reset_email_success, status: 200
        else
          not_found
        end
      end

      def edit
        render json: :ok
      end

      def update
        if @user.update!(password_params)
          @user.clear_password_token!
          render json: :ok
        else
          unprocessable_entity
        end
      end

      private

      def password_params
        params.require(:user).permit(
          :password, :password_confirmation
        )
      end

      def set_user
        @user = User.find_by(reset_password_token: params[:token])
        unprocessable_entity unless verify_token(@user)
      end

      def verify_token(user)
        expires_at = user&.reset_password_token_expires_at
        expires_at.present? && (expires_at > Time.now)
      end
    end
  end
end
