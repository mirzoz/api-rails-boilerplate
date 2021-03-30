# frozen_string_literal: false

module ErrorMessages
  extend ActiveSupport::Concern

  private

  def bad_request
    render json: { error: 'bad_request' }, status: :bad_request
  end

  def forbidden
    render json: { error: 'forbidden' }, status: :forbidden
  end

  def not_authorized
    render json: { error: 'not_authorized' }, status: :unauthorized
  end

  def not_found
    render json: { error: 'not_found' }, status: :not_found
  end

  def unprocessable_entity
    render json: { error: 'unprocessable_entity' },
           status: :unprocessable_entity
  end
end
