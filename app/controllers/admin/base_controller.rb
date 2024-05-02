module Admin
    class BaseController < ApplicationController
        before_action :check_if_admin

        def users
            @users = User.all
        end

        def promote_to_admin
            user = User.find(params[:user_id])
            user.update(admin: true)
            redirect_to admin_users_path, notice: "#{user.email} has been promoted to admin."
        end

        def revoke_admin
            user = User.find(params[:user_id])
            user.update(admin: false)
            redirect_to admin_users_path, notice: "#{user.email} no longer has administrator privileges."
        end

        private

        def check_if_admin
            redirect_to root_path unless current_user.admin?
        end
    end
end
