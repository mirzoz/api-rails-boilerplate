# frozen_string_literal: false

class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json
end
