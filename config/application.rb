require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mesh
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :ru
    config.time_zone = 'Moscow'

    config.assets.paths << "#{Rails.root}/app/assets/fonts"
    config.assets.paths << "#{Rails.root}/app/assets/javascripts/client_app"
    config.autoload_paths << "#{Rails.root}/app/serializers"

    config.generators do |g|
      g.test_framework   :rspec
      g.integration_tool :rspec
      g.template_engine  nil
      g.assets           false
      g.helper           false
    end

  end
end
