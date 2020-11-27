# frozen_string_literal: false

class HomeController < ApplicationController
  def index
    render json: 'Hi there! 😉'
  end
end
