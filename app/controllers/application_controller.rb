# frozen_string_literal: false

class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json

  private

  def authenticate_user!
    return if user_signed_in?

    render json: '401 Unauthorized', status: 401
  end
end
