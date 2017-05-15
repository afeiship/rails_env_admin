require 'rails/generators/base'

module RailsEnvAdmin
  module Generators

    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      argument :config_name, :type => :string, :default => "rails_pages"
      class_option :test, :type => :boolean, :defalut => false

      def ask_user_info
        username = ask 'Your user? [ADMIN_USER]?'
        password = ask 'Your password ? [ADMIN_PASSWORD]?'
        puts 'storing user/password to ENV...'
        ENV['ADMIN_USER'] = username
        ENV['ADMIN_PASSWORD'] = password
      end

      def store_user_info
        puts ENV.to_a;
      end

    end

  end
end
