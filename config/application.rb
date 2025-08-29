require_relative "boot"
require "logger"   # ✅ Add this line for Ruby 3.2+
require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GoAbackend
  class Application < Rails::Application
    # Initialize configuration defaults for Rails 7
    config.load_defaults 7.0

    # In Rails 7, use autoload_paths to include lib/
    config.autoload_paths << Rails.root.join("lib")

    # Configuration for the application, engines, and railties goes here.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
