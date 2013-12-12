# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Postgresql::Application.config.secret_key_base = '328b50d50fcad66db12d0ae798db6515e7d29a67a57a819dc8c03dbde3090205db9e85e0408af73e70f5b6d66746e9665365424746e23ca23bf5425db3fe6e7b'
