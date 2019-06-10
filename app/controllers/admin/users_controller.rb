# frozen_string_literal: true

module Admin
  class UsersController < Admin::BaseController
    before_action :find_user, only: :show

    def show; end

    def index
      @users = User.all
    end

    private

    def find_user
      @user = User.find(params[:id])
    end
  end
end
