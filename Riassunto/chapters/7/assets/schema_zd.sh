# Messaggio cifrato:
openssl smime -encrypt -text -in message.txt -out messaggio.txt \
 -from mittente@unipr.it -to roberto.alfieri@fis.unipr.it \
 -subject "encrypted"  destination-user-certificate.pem

# Messaggio firmato:
openssl smime -sign -text -in message.txt  -out messaggio.txt \
 -from roberto.alfieri@fis.unipr.it -to destinatario@pr.infn.it \
 -subject "signed" -signer usercert.pem  -inkey userkey.pem