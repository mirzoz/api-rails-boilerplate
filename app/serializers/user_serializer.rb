class UserSerializer
  include JSONAPI::Serializer
  attributes :firstname, :lastname, :email
end
