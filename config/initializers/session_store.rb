# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_task_session',
  :secret      => 'f6c423e1ee0414f0ec43fb78e6655a9f503173a39442418095f0025533eafeb4642eca8003332e3d4923d51803e61c2777c966ef932eba9ab17c740a9b7fd401'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
