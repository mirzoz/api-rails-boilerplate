# frozen_string_literal: false

class Account < ApplicationRecord
  enum account_type: %I[free]
end
