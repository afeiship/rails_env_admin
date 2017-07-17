require 'rails/generators/base'

module RailsEnvAdmin
  module Generators



    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      argument :config_name, :type => :string, :default => "rails_env_admin"
      class_option :test, :type => :boolean, :defalut => false

      def ask_user_info
        @username = ask 'Your user [ADMIN_USER]?'
        @password = ask 'Your password [ADMIN_PASSWORD]?'
      end

      def copy_config_file
        template 'config/initializers/rails_env_admin.rb', 'config/initializers/rails_env_admin.rb'
        template 'config/locales/zh-CN.yml','config/locales/zh-CN.yml'
      end

      def create_routes
        # route "match 'sessions/new' => 'rails_env_admin/sessions/new', via: :get"
        # route "match 'sessions/create' => 'rails_env_admin/sessions/create', via: :post"
        # route "match 'sessions/destroy' => 'rails_env_admin/sessions/destroy', via: :delete"
      end

    end




  end
end

