import ssl, socket

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) ssl_sock = ssl.wrap_socket(sock,
    ca_certs = './cacert.pem',      # Concatenated CA certificates
    cert_reqs = ssl.CERT_REQUIRED)  # Cert is required from other side
s.connect(('netlab.fis.unipr.it', 443))
s.write("""GET / HTTP/1.1\r Host: www.google.com\r\n\r\n""")
data = True

while data:
    data = ssl_sock.read()
    print data

ssl_sock.close()