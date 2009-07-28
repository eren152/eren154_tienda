# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tienda_session',
  :secret      => 'baf6fe66696d986fdbcda60d0fd7c27a367d63350270de2e0a47238fc7e60b5858e9ef3acd97cd592547cc6f6c46e9ae09d8a8c5a1aa35fa4697d95d07b85aa1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
