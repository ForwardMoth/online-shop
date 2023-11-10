class ApplicationController < ActionController::Base
    before_action :current_user

    def current_user
        @user = User.first
        @order = @user.order
    end
end
