# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ft_test_app_session',
  :secret      => '9a380f3870736db568e4b346cb39f9a213b4203a6792747e5fb7b7356712b52b0293c05d5b2428e47ce487d0795ba2ea342244565de7b17f3f8fa4e06699b655'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
