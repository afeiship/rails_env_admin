require 'rails'


module RailsEnvAdmin

  module SessionsHelper
    def sign_out
      session[:login] = nil
      redirect_to :root
    end

    def signed_in?
      session[:login]
    end


    def authericate_user!
      if signed_in?
        flash[:error] = '请先登录后台管理'
        cookies[:urlback] = request.original_url
        redirect_to :root
      end
    end

    def admin_username
      session[:login] && ENV['ADMIN_USER']
    end
  end

end