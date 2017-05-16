require "rails_env_admin/version"

module RailsEnvAdmin
  # Your code goes here...
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :example

    def initialize
      @example = nil
    end
  end
end
