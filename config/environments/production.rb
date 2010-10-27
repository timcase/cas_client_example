# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = true
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

# See everything in the log (default is :info)
# config.log_level = :debug

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Use a different cache store in production
# config.cache_store = :mem_cache_store

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host = "http://assets.example.com"

# Disable delivery errors, bad email addresses will be ignored
# config.action_mailer.raise_delivery_errors = false

# Enable threaded mode
# config.threadsafe!

CLASSY_CAS_URL = "http://evening-day-42.heroku.com"

FIRST_SITE_URL = 'http://quiet-samurai-41.heroku.com'
SECOND_SITE_URL = 'http://cold-river-72.heroku.com'

config.action_mailer.default_url_options = { :host => 'quiet-samurai-41.heroku.com' }
require 'omniauth/enterprise'
config.middleware.use OmniAuth::Strategies::CAS, :cas_server => CLASSY_CAS_URL