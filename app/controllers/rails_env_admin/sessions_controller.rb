require 'rails'


module RailsEnvAdmin
  class SessionsController < ActionController::Base

    def new
    end

    def create
      if ENV['ADMIN_USER'].blank?
        flash.now[:error] = t('rails_env_admin.no_configuration')
        render :new
      elsif ENV['ADMIN_USER'] != params[:username]
        flash.now[:error] = t('rails_env_admin.username_error')
        render :new
      elsif ENV['ADMIN_PASSWORD'] != params[:password]
        flash.now[:error] = t('rails_env_admin.password_error')
        render :new
      else
        flash[:success] = t('rails_env_admin.login_success')
        session[:login] = true
        redirect_to :root
      end
    end

    def destroy
      session[:login] = nil
      redirect_to :new
    end

  end
end