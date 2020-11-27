class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: 'Hi there!'
  end
end