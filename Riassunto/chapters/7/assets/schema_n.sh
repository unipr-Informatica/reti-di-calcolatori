echo "foo" | openssl dgst  -sha256 -hmac 123
# -hmac key: create a hashed MAC using "key".