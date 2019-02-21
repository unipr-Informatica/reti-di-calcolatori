SSL_CTX* ctx;
ctx = SSL_CTX_new(SSLv23_client_method()); //sslv2 e sslv3