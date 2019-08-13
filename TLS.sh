#!/bin/bash
export SAN=DNS:$1
openssl req -new -config conf/TLS.conf -out int-ca/csr/$1.csr -keyout int-ca/private/$1.key
openssl ca -config ./int-ca.conf -in ./int-ca/csr/$1.csr -out int-ca/certs/$1.crt -extensions server_ext
