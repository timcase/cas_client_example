# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cas_app_session',
  :secret      => '9ad88e8c53d3151df9bf2c50a77e336fe42b03a0d76104ff8e2cc108b7eda0b40b7bccea1fcdda5f90f73f63bf0c9458e89d8eedcdb0100ea5855ed3cc22e420'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
