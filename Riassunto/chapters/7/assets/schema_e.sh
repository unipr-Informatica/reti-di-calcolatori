# Accetta i pacchetti entrati di connessioni già stabilite
iptables -A INPUT -p ALL -m state --state ESTABLISHED -j ACCEPT

# Accetta i pacchetti entranti dei servizi interni
iptables -A INPUT -p tcp --dport http -i eth0 -j ACCEPT
iptables -A INPUT -p tcp --dport smtp -i eth0 -j ACCEPT
iptables -A INPUT -p tcp --dport ssh  -i eth0 -j ACCEPT

# Accetta e registra nel log i pacchetti diretti a telnet
iptables -A INPUT -p tcp --dport 23 -i eth0 -j LOG --log-prefix /
"TELNET"

# Tutto il resto viene scartato
iptables --policy INPUT DROP