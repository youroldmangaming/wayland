apt install weston

weston --backend=rdp-backend.so

openssl genrsa -out rdp-key.pem 2048

 openssl req -new -x509 -key rdp-key.pem -out rdp-cert.pem -days 365

weston --backend=rdp-backend.so --rdp-tls-cert=rdp-cert.pem --rdp-tls-key=rdp-key.pem &

