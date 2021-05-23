# arrowhead-setup <!-- omit in toc -->
This project is derived from [Arrowhead framework core project](https://github.com/eclipse-arrowhead/core-java-spring). The main purpose of this repository is get up and running Arrowhead-4.2.0 in your environment with docker.

- Setup Arrowhead Framework with Docker and Docker-compose.
- Certification basics of clients, localclouds and globalclouds.


## Table of Contents <!-- omit in toc -->
- [Running Arrowhead-4.2.0 core systems with Docker](#running-arrowhead-core-systems-with-docker)
  - [Requirements](#requirements)
  - [Quick guide](#quick-guide)
  - [Create certificates](#create-certificates)
    - [Insert your information](#insert-your-information)
    - [PKCS #12 password](#pkcs-12-password)
    - [Run certificate generation script](#run-certificate-generation-script)
  - [Start Arrowhead Core systems](#start-arrowhead-core-systems)
    - [...with default options](#with-default-options)
    - [...with docker images from jars](#with-docker-images-from-jars)
    - [...with lower memory usage (and less performance)](#with-lower-memory-usage-and-less-performance)
    - [...with management tool](#with-management-tool)
    - [...with jars and low memory](#with-jars-and-low-memory)
    - [...with all above options](#with-all-above-options)
  - [Shut down Arrowhead core systems](#shut-down-arrowhead-core-systems)
- [P12 certificate unpacking for clients](#p12-certificate-unpacking-for-clients)
  - [Shell script unpack_p12.sh](#shell-script-unpack_p12sh)
  - [Command line openssl unpack](#command-line-openssl-unpack)


## <a name="running-arrowhead-core-systems-with-docker"></a>Running Arrowhead-4.2.0 core systems with Docker
Clone the repository to your machine with:
```
https://github.com/BitNet-SMARTPDM/arrowhead-setup.git
```


### <a name="requirements"></a>Requirements
Requires Docker, which can be installed for Ubuntu or Raspberry Pi following the guide [here](https://docs.docker.com/engine/install/ubuntu/).  
For windows you need to download and install [Docker Desktop](https://www.docker.com/products/docker-desktop).

You also need to separately install docker-compose on Linux systems to which instructions can be found [here](https://docs.docker.com/compose/install/)


### <a name="quick-guide"></a>Quick guide
Generate default certificates (may need to run `dos2unix` / `unix2dos` on the script):
```
cd certs/scripts
./create_p12_certs.sh
```
Create volume for database:
```
docker volume create --name=mysql
```
Start Arrowhead core systems (from repository root folder):
```
docker-compose up --build
```
Use `sysop` or `client` certificates found in `./certs` to access Arrowhead core systems.


Instructions on how to import the `sysop.p12` certificate to your browser can be found [here](https://www.ibm.com/support/knowledgecenter/SSYMRC_6.0.2/com.ibm.team.jp.jrs.doc/topics/t_jrs_brwsr_cert_cfg.html).  
Default pasword for the `.p12` file is `123456`.

With browser you may now access Arrowhead core Swaggers from:
```
https://localhost:8443  # Service registry
https://localhost:8445  # Authorization
https://localhost:8441  # Orchestrator
https://localhost:8449  # Gatekeeper
https://localhost:8453  # Gateway
```


### <a name="create-certificates"></a>Create certificates
Certificates are needed for HTTPS communication between the Arrowhead core and client systems.


#### <a name="insert-your-information"></a>Insert your information
Edit the script `./certs/scripts/create_p12_certs.sh` with your information to following fields:

- COMPANY
  - Your company name
- CLOUD
  - Your Arrowhead cloud name
- COMMON_SAN
  - Append here your dns and/or ip address of Arrowhead core systems host
  - Append dns and/or ip addresses you plan to decribe your client systems with
- YOUR CLIENTS
  - Append to the list of `create_consumer_system_keystore` your desired client system names

Also remember to change Arrowhead core properties in `./core_system_config` folder to match:
- `server.ssl.key-alias`


#### <a name="pkcs-12-password"></a>PKCS #12 password
You may set your own password to the P12 files before creating the certificates.  
By default the password is `123456`.

Edit the script `./certs/scripts/lib_certs.sh` with your desired default password for the .p12 certificate stores.

Also remember to set the same password to Arrowhead core properties in `./core_system_config` folder:
- `server.ssl.key-store-password`
- `server.ssl.key-password`
- `server.ssl.trust-store-password`


#### <a name="run-certificate-generation-script"></a>Run certificate generation script
Create the certificates for both Arrowhead core systems and clients by running the script found in directory:
```
cd ./certs/scripts
```
From there run command:
```
./create_p12_certs.sh
```
The script generates the certificates into a PKCS #12 (.p12) store within `./certs` folder. Incase the certificate already existed, it is not overwritten by the script.

If you run into errors executing the script you may need to run `dos2unix` / `unix2dos` on the script depending on which OS you're using.


### <a name="start-arrowhead-core-systems"></a>Start Arrowhead Core systems
Ensure you have the necessary .p12 certificates and truststore for the core systems in `./certs` folder.

Change `MYSQL_ROOT_PASSWORD` within `docker-compose.yml`.

Once Docker is up and running you need to create a volume for the MariaDB database:
```
docker volume create --name=mysql
```

#### <a name="with-default-options"></a>...with default options
Run following command to start Arrowhead Core systems with existing docker images:
```
docker-compose up --build
```


#### <a name="with-docker-images-from-jars"></a>...with docker images from jars
Ensure `.jar` packages for core systems are located in `./jars` folder.
Instuctions on how to build `.jar` files for Arrowhead core systems can be found in [core-java-spring](https://github.com/eclipse-arrowhead/core-java-spring) repository.

```
docker-compose \
-f docker-compose.yml \
-f docker-compose.jars.yml \
up --build
```

You may need to use this option to get Arrowhead running on Raspberry Pi as existing docker images may not support RPi processor architecture.

#### <a name="with-lower-memory-usage-and-less-performance"></a>...with lower memory usage (and less performance)
Recommended when running for example on Raspberry Pi

```
docker-compose \
-f docker-compose.yml \
-f docker-compose.low_mem.yml \
up --build
```


#### <a name="with-management-tool"></a>...with management tool
```
docker-compose \
-f docker-compose.yml \
-f docker-compose.mgmt_tool.yml \
up --build
```

#### <a name="with-jars-and-low-memory"></a>...with jars and low memory
```
docker-compose \
-f docker-compose.yml \
-f docker-compose.jars.yml \
-f docker-compose.low_mem.yml \
up --build
```

#### <a name="with-all-above-options"></a>...with all above options
```
docker-compose \
-f docker-compose.yml \
-f docker-compose.jars.yml \
-f docker-compose.low_mem.yml \
-f docker-compose.mgmt_tool.yml \
up --build
```


### <a name="shut-down-arrowhead-core-systems"></a>Shut down Arrowhead core systems
To stop running Arrowhead press `CTRL+C` to interrupt.  
To clean up any remaining resources run:
```
docker-compose down
```


## <a name="p12-certificate-unpacking-for-clients"></a>P12 certificate unpacking for clients

### <a name="shell-script-unpack_p12sh"></a>Shell script unpack_p12.sh

Utilizes openssl.  
(May need to run `dos2unix` / `unix2dos` on the script)

Using via command line:
```
script:                       path to p12 file:       passphrase:
./certs/scripts/unpack_p12.sh ./certs/your_client.p12 123456
```
Output:
```
Created file: ./certs/your_client.crt
Created file: ./certs/your_client.key
Created file: ./certs/your_client.ca
```


### <a name="command-line-openssl-unpack"></a>Command line openssl unpack

Certificate
```
openssl pkcs12 -in your_client.p12 -clcerts -nokeys > your_client.crt
```
Private Key
```
openssl pkcs12 -in your_client.p12 -nocerts -nodes > your_client.key
```
CA Certificates
```
openssl pkcs12 -in your_client.p12 -cacerts -nokeys -chain > your_client.ca
```
Show SAN from .crt/.key/.ca:
```
openssl x509 -text -noout -in your_client.pem | grep DNS
```
