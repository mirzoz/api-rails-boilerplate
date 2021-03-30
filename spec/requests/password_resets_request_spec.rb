# frozen_string_literal: true

require 'rails_helper'

describe 'app V1 - password resets' do
  describe 'POST /api/v1/users/password_resets' do
    context 'when a correct email is sent' do
      let(:api) { '/api/v1/users' }
      let!(:user) { create(:user, email: 'admin@app.com') }

      let(:email_params) do
        {
          user: {
            email: 'admin@app.com'
          }
        }
      end

      it 'returns status 200' do
        post "#{api}/password_resets", params: email_params

        expect(response.status).to eq(200)
        expect(response.body.include?('reset_email_success')).to eq(true)
      end
    end

    context 'when a incorrect email is sent' do
      let(:api) { '/api/v1/users' }
      let!(:user) { create(:user, email: 'admin@app.com') }

      let(:email_params) do
        {
          user: {
            email: 'error@app.com'
          }
        }
      end

      it 'returns status 404' do
        post "#{api}/password_resets", params: email_params

        expect(response.status).to eq(404)
        expect(response.body.include?('not_found')).to eq(true)
      end
    end
  end

  describe 'GET /api/v1/users/reset_passwords/:token/edit' do
    context 'when a correct token is sent' do
      let(:api) { '/api/v1/users' }
      let(:user) { create(:user, email: 'admin@app.com') }
      let!(:create_token) { user.generate_password_token! }

      it 'returns status 200' do
        get "#{api}/reset_passwords/#{user.reset_password_token}/edit"

        expect(response.status).to eq(200)
        expect(response.body.include?('ok')).to eq(true)
      end
    end

    context 'when a incorrect token is sent' do
      let(:api) { '/api/v1/users' }
      let(:user) { create(:user, email: 'admin@app.com') }
      let!(:create_token) { user.generate_password_token! }

      it 'returns status 422' do
        get "#{api}/reset_passwords/gert43_er325564efe/edit"

        expect(response.status).to eq(422)
        expect(response.body.include?('unprocessable_entity')).to eq(true)
      end
    end

    context 'when an expired token is sent ' do
      let(:api) { '/api/v1/users' }
      let(:user) { create(:user, email: 'admin@app.com') }
      let!(:create_token) { user.generate_password_token! }
      let!(:token_expired) do
        user.update(reset_password_token_expires_at: -1.day.from_now)
      end

      it 'returns status 422' do
        get "#{api}/reset_passwords/#{user.reset_password_token}/edit"

        expect(response.status).to eq(422)
        expect(response.body.include?('unprocessable_entity')).to eq(true)
      end
    end
  end

  describe 'PATCH /api/v1/users/reset_passwords/:token' do
    context 'when the password is updated correctly ' do
      let(:api) { '/api/v1/users' }
      let(:user) { create(:user, email: 'admin@app.com') }
      let!(:token) do
        user.generate_password_token!
        user.reset_password_token
      end

      let(:params) do
        {
          user: {
            password: '12345678',
            password_confirmation: '12345678'
          }
        }
      end

      it 'returns status 200' do
        patch "#{api}/reset_passwords/#{token}", params: params

        expect(response.status).to eq(200)
        expect(response.body.include?('ok')).to eq(true)
      end
    end
  end
end
