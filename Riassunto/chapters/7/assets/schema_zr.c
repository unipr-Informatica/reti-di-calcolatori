bio = BIO_new_ssl_connect(ctx);
BIO_set_conn_hostname(bio, "hostname:port");