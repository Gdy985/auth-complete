# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret = "tacos"
puts secret
# 2. prepare encrypted string for testing
encrypted_string = BCrypt::Password.create(secret)
puts encrypted_string

user_entered_secret = "hahaha"
result = BCrypt::Password.new(encrypted_string) == user_entered_secret
# 3. test secret against prepared encrypted string
puts result