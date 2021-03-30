# frozen_string_literal: true

require 'rails_helper'

describe 'Neogaleno V1 - sessions' do
  describe 'POST /api/v1/users/sign_in' do
    context 'when the access is valid' do
      let!(:user) { create(:user) }

      let(:user_data) do
        {
          user: {
            email: user.email,
            password: '12345678'
          }
        }
      end

      it 'returns status 200' do
        post '/api/v1/users/sign_in', params: user_data

        expect(response.status).to eq(200)
        expect(response.body.to_json['firstname']).to be_present
        expect(response.body.to_json['lastname']).to be_present
        expect(response.body.to_json['email']).to be_present
      end
    end

    context 'when the access is invalid' do
      let!(:user) { create(:user) }

      let(:user_data) do
        {
          user: {
            email: user.email,
            password: '87654321'
          }
        }
      end

      it 'returns status 401' do
        post '/api/v1/users/sign_in', params: user_data

        expect(response.status).to eq(401)
        expect(response.body.to_json['token']).to be_nil
      end
    end
  end
end
