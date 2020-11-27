class HomeController < ApplicationController

  def index
    render json: 'Hi there!'
  end
end