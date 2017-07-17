require "rails_env_admin/version"
require 'rails_env_admin/engine'

module RailsEnvAdmin
    Rails.application.config.assets.precompile += %w( rails_env_admin/rails_env_admin.css )
end
