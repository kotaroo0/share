# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Share
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # 日本時間に設定
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local

    # 日本語設定
    config.i18n.default_locale = :ja

    config.generators do |g|
      g.test_framework :rspec,
                       view_specs: true,
                       helper_specs: true,
                       controller_specs: true,
                       routing_specs: true
    end
  end
end
