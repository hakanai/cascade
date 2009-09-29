# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cascade_session',
  :secret      => 'ea41d8053ceadd3f0352ee3818015b98017ea8c17ef13fdf40e12b712df2277cfc9d8b458d9d4559aa6530f317d5c22b1582de2e9b297c2df219a3592d2d3b95'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
