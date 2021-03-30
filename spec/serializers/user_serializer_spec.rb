# frozen_string_literal: false

require 'rails_helper'

describe UserSerializer, type: :serializer do
  let!(:user) { create(:user) }
  subject { described_class.new(user) }

  describe '.new' do
    it 'returns user object' do
      expect(subject.attributes.keys).to eq(
        %I[
          firstname
          lastname
          email
        ]
      )
    end
  end
end
