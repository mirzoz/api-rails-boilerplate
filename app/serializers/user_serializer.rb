# frozen_string_literal: false

class UserSerializer
  include JSONAPI::Serializer
  attributes :firstname, :lastname, :email
end
