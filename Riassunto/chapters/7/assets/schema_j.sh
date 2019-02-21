# Testare se uno o più numeri sono primi:
openssl prime 119054759245460753
> 1A6F7AC39A53511 is not prime
for N in $(seq 100 300); do openssl prime $N; done

# Stampa un numero random di 128 byte codificato in base64
openssl rand -base64 128

# Scrive un numero random di 32 bits (4 bytes) su un file
openssl rand -out random-data.bin 4