# frozen_string_literal: false

module Api
  module V1
    class AccountsController < ApplicationController
      before_action :authenticate_user!

      def index
        account = Account.all.select(:id, :name, :country)
        render(json: account)
      end
    end
  end
end
