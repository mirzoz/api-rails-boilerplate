# frozen_string_literal: false

class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json

  def authenticate_user!
    super
    render json: "Noooooooo!" if current_user.nil?
  end
end
