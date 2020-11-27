# frozen_string_literal: false

class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstname, :lastname, :email
end
