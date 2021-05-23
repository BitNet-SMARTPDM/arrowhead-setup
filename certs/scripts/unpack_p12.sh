#!/bin/bash

# Created by Jani Hietala (https://github.com/scurvide)

# Unpacks a PKCS#12 file into .crt, .key and .ca files
# Usage: ./unpack_p12.sh input_p12_filepath passphrase

filename=${1//.p12/}

openssl pkcs12 -in $filename.p12 -passin pass:$2 -clcerts -nokeys > $filename.crt
echo "Created file: $filename.crt"
openssl pkcs12 -in $filename.p12 -passin pass:$2 -nocerts -nodes > $filename.key
echo "Created file: $filename.key"
openssl pkcs12 -in $filename.p12 -passin pass:$2 -cacerts -nokeys -chain > $filename.ca
echo "Created file: $filename.ca"