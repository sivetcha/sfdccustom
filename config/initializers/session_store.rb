# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sfdccustom_session',
  :secret      => '3adcbf98a3717e14d365c30e23f4be41a823853c681b1bbbd6fd85b6cad78e54b23cbaa1868807c8ff7fa289ae7b49d6aac97230c23e33fc859d74941f4f58f7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
