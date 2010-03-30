# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_booklist_session',
  :secret      => '7a54b0df81cbacf11fe7b526d1543f10545031afd07c16771c7d4901f3c0d233c22422a710919ff98101b7bc43fd109bd7571365c55ab94e41a72de958f6f018'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
