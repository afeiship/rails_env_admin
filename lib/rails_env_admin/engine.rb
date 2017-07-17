require 'rails'

module RailsEnvAdmin
  class Engine < Rails::Engine
    # isolate_namespace RailsEnvAdmin
    initializer 'RailsEnvAdmin precompile hook', group: :all do |app|
      app.config.assets.precompile += %w(
        rails_env_admin/rails_env_admin.css
      )
    end
  end
end
