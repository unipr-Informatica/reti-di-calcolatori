int x = BIO_read(bio, buf, len);
if (x == 0) { /* handle closed connection */ }
if (x < 0) { /* handle failed read */ }