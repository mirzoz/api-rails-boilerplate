# frozen_string_literal: false

class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :account_type, :observation
end
