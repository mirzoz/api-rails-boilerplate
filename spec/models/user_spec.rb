# frozen_string_literal: false

require 'rails_helper'

describe User, type: :model do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  describe '#generate_password_token!' do
    let(:user) { create(:user) }
    let!(:password_token) { user.generate_password_token! }

    context 'when a token is generated to the user' do
      it 'returns true' do
        expect(password_token).to eq(true)
      end

      it 'generates a user token' do
        expect(user.reset_password_token).to be_present
      end

      it 'generates a expires date' do
        expect(user.reset_password_token_expires_at).to be_present
      end
    end
  end

  describe '#clear_password_token!' do
    let(:user) { create(:user) }
    let!(:password_token) { user.generate_password_token! }
    let!(:clear_token) { user.clear_password_token! }

    context 'when user token is cleared ' do
      it 'returns true' do
        expect(clear_token).to eq(true)
      end

      it 'generates a user token' do
        expect(user.reset_password_token).to be_nil
      end

      it 'generates a expires date' do
        expect(user.reset_password_token_expires_at).to be_nil
      end
    end
  end
end
