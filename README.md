# arrowhead-setup <!-- omit in toc -->
This project is derived from [Arrowhead framework core project](https://github.com/eclipse-arrowhead/core-java-spring). The main purpose of this repository is get up and running Arrowhead-4.2.0 in your environment with docker.

- Setup Arrowhead Framework with Docker and Docker-compose.
- Certification basics of clients, localclouds and globalclouds.


## Table of Contents <!-- omit in toc -->
- [Install Arrowhead-4.2.0 core systems with Docker](#running-arrowhead-core-systems-with-docker)
  - [Requirements](#requirements)
  - [Quick guide](#quick-guide)
  - [Certificate Generation](#create-certificates)
    - [Insert your information](#insert-your-information)
    - [PKCS #12 password](#pkcs-12-password)
    - [Run certificate generation script](#run-certificate-generation-script)
  - [Start Arrowhead-4.2.0](#start-arrowhead-core-systems)
- [P12 certificate unpacking for clients](#p12-certificate-unpacking-for-clients)
  - [Shell script unpack_p12.sh](#shell-script-unpack_p12sh)
  - [Command line openssl unpack](#command-line-openssl-unpack)


## <a name="running-arrowhead-core-systems-with-docker"></a>Install Arrowhead-4.2.0 core systems with Docker
This repository aims to install Arrowhead-4.2.0 on your localcloud and globalcloud. In order to get the system up and running you furst download two repository given in the below. During the installation, we assume that you are root user on your system. 

Clone the repository to your machine with:
```
https://github.com/BitNet-SMARTPDM/arrowhead-setup.git
https://github.com/arrowhead-f/core-java-spring.git
```
Than on your Ubuntu20.04 run the commands given below
```
apt update
apt install openjdk-11-jre-headless
apt install maven
Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
Install Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```


### <a name="requirements"></a>Requirements
In order to get Arrowhead up and running on your system, you should have 4GB of RAM and 10GB of HDD



### <a name="create-certificates"></a>Certificate Generation
Certificates are needed for HTTPS communication between the Arrowhead core and client systems.


#### <a name="insert-your-information"></a>Insert your information
Edit the script `./certs/scripts/create_p12_certs.sh` with your information to following fields:

- COMPANY
  - Your company name
- CLOUD
  - Your Arrowhead cloud name
- COMMON_SAN
  - Append here your dns and/or ip address of Arrowhead core systems host (for localclouds this ip should be pointed localhost and 127.0.0.1, for globalclouds this ip should be pointed your external static ip and DNS name)
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

vim 

### <a name="start-arrowhead-core-systems"></a>Start Arrowhead-4.2.0

You should modify the files under `/root/arrowhead-setup/core_system_config` that will point your certificate name with your favorite editor
```
vim authorization.properties
```
and change
`server.ssl.key-alias=authorization.yourcloud.your-company.arrowhead.eu`
`server.ssl.key-password=123456`

You will apply this steps for
- `authorization.properties`
- `certificateauthority.properties`
- `eventhandler.properties`
- `gatekeeper.properties`
- `gateway.properties`
- `orchestrator.properties`
- `serviceregistry.properties`


Ensure you have the necessary .p12 certificates and truststore for the core systems in `./certs` folder.

Change `MYSQL_ROOT_PASSWORD` within `docker-compose.yml`.

Once Docker is up and running you need to create a volume for the MariaDB database:
```
docker volume create --name=mysql
```

```
docker-compose -f docker-compose.yml -f docker-compose.jars.yml -f docker-compose.mgmt_tool.yml up --build
```


In order to shutdown the system
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
