# frozen_string_literal: false

module Api
  module V1
    class AccountsController < ApplicationController
      before_action :authenticate_user!

      def index
        account = Account.all
        render(json: account)
      end
    end
  end
end
