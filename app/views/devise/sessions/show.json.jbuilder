# frozen_string_literal: false

return unless user_signed_in?

json.user do
  json.call(current_user, :id, :email)
end
