# frozen_string_literal: false

class JwtBlacklist < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Blacklist
end
