openssl base64 -e -in myfile -out myfile.b64
echo "encode me" | openssl base64
openssl base64 -d -in myfile.b64 -out myfile.decrypt