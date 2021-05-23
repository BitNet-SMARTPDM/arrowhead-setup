#!/bin/bash

# Created by Emanuel Palm (https://github.com/emanuelpalm)
# Edited by Jani Hietala (https://github.com/scurvide)

source "lib_certs.sh"

# Running this script does not replace any existing certificates
# Only creates new ones and adds them to truststore

ROOT="arrowhead.eu"
# Your company
COMPANY="your_company"
# Your Arrowhead cloud
CLOUD="your_cloud"
# Relay
RELAY="relay"
# Append Arrowhead server's dns and/or ip address to COMMON_SAN
COMMON_SAN="dns:localhost,ip:127.0.0.1"  # ,dns:your_domain,ip:123.456.789.123


# ROOT

# If you want to start the certificate chain from an existing master
# certificate, add the certificate file to this path and name below
create_root_keystore \
  "../master/master.p12" "${ROOT}"


# CLOUD

# If you want to use an existing cloud certificate, add the
# certificate file to this path and name below
create_cloud_keystore \
  "../master/master.p12" "${ROOT}" \
  "../cloud/${CLOUD}.p12" "${CLOUD}.${COMPANY}.${ROOT}"


# RELAY

# Relay certificates for the relay system between Arrowhead local clouds
create_cloud_keystore \
  "../master/master.p12" "${ROOT}" \
  "../relay/${RELAY}.p12" "${RELAY}.${ROOT}"

create_relay_system_keystore() {
  SYSTEM_NAME=$1
  SAN="dns:${SYSTEM_NAME//_}"

  create_system_keystore \
    "../master/master.p12" "${ROOT}" \
    "../relay/${RELAY}.p12" "${RELAY}.${ROOT}" \
    "../relay/${SYSTEM_NAME}.p12" "${SYSTEM_NAME}.${RELAY}.${ROOT}" \
    "${SAN},${COMMON_SAN}"
}
create_relay_system_keystore "your_relay"

create_truststore \
  "../relay/truststore.p12" \
  "../master/master.crt" "${ROOT}"


# ARROWHEAD CORE

create_consumer_system_keystore() {
  SYSTEM_NAME=$1
  SAN="dns:${SYSTEM_NAME//_}"

  create_system_keystore \
    "../master/master.p12" "${ROOT}" \
    "../cloud/${CLOUD}.p12" "${CLOUD}.${COMPANY}.${ROOT}" \
    "../${SYSTEM_NAME}.p12" "${SYSTEM_NAME}.${CLOUD}.${COMPANY}.${ROOT}" \
    "${SAN},${COMMON_SAN}"
}

# Arrowhead core service certs
create_consumer_system_keystore "authorization"
create_consumer_system_keystore "orchestrator"
create_consumer_system_keystore "service_registry"
create_consumer_system_keystore "gatekeeper"
create_consumer_system_keystore "gateway"
create_consumer_system_keystore "certificate_authority"
create_consumer_system_keystore "event_handler"


# YOUR CLIENTS

# Add your desired client system certificates here
#create_consumer_system_keystore "your_consumer"
create_consumer_system_keystore "client"


# SYSOP

# Sysop certificates for system management
create_sysop_keystore \
  "../master/master.p12" "${ROOT}" \
  "../cloud/${CLOUD}.p12" "${CLOUD}.${COMPANY}.${ROOT}" \
  "../sysop.p12" "sysop.${CLOUD}.${COMPANY}.${ROOT}"


# TRUSTSTORE

# Truststores for Arrowhead core services
create_truststore \
  "../truststore.p12" \
  "../cloud/${CLOUD}.crt" "${CLOUD}.${COMPANY}.${ROOT}"

# Truststore for gatekeeper and gateway including relay master certificate
create_truststore \
  "../gk_gw_truststore.p12" \
  "../cloud/${CLOUD}.crt" "${CLOUD}.${COMPANY}.${ROOT}" \
  "../relay/${RELAY}.crt" "${RELAY}.${ROOT}"