# arrowhead-setup

This project was created from scripts that can be found found in [Arrowhead framework core project](https://github.com/arrowhead-f/core-java-spring).
We divided the Arrowhead installation into two subgroups;

- Localclouds (install arrowhead services that it will run locally on your computer and Raspberry Pi)
- Globalclouds (install arrowhead services that it will be reachable over a static ip or a DNS name)

The main purpose of this division is pointing how the Arrowhead installations are differ between local and static ip or DNS especially on installation, certification, accessing management ui. All the installations depends on the docker. 


# Table of Contents
- [The System Requirements](#TheSystemRequirements)
- [Docker installation on Raspberry Pi and Ubuntu](#installation)
  - [Install Docker on Raspbeery Pi](#DoR)
  - [Install Docker on Ubuntu](#DoU)
- [Certification](#cert)
  - [Create certificates for localclouds](#cfl)
  - [Create certificates for Globalclouds (DNS or StaticIP based)](#cfg)
- [The checklist before starting Installation](#checklist)
- [Up and Running Arrowhead Localcloud](#ilc)
  - [Install Mimosa CBM](#miml)
  - [Connect Spring UI's over Web Browsers on Windows and MAC](#lcgui)
  - [Test Your Installation](#tyil)
- [Install Globalcloud](#igc)
  - [Get the Dockers up and running](#durg)
  - [Install Mimosa CBM](#mimg)
  - [Connect Spring UI's over Web Browsers on Windows and MAC](gcgui)
  - [Test Your Installation](#tyi)
- [Video Installation Guides](#vig)

<!-- toc -->

## <a name="TheSystemRequirements"></a>The System Requirements
Global and Local installations with the all Arrowhead native services requires min 4GB RAM and 20GB HDD

The Current Arrowhead docker images (svetlint) servers arrowhead 4.1.3 (the old version). In order to get have Arrowhead 4.2.0 you should apply below steps on your installation source. 

During this installation we assume that you are root user. 

```
git clone https://github.com/BitNet-SMARTPDM/arrowhead-setup.git
git clone https://github.com/arrowhead-f/core-java-spring.git

```
After downloading the sources, you first compile the Arrowhead-4.2.0 from source. 
Here is the sample compilation.
```
apt install openjdk-11-jre-headless
apt install maven
cd core-spring-java
mvn install -DskipTests
```
At the end of this process each jar file was created under service/target like 

```
cd authorization/target/
ls arrowhead-authorization-4.2.0.jar
```

Than you should copy these jar files from core-java-spring to arrowhead-setup

```
cp /root/core-spring-java/authorization/target/arrowhead-authorization-4.2.0.jar /root/arrowhead-setup/jars/
cp /root/core-spring-java/certificate-authority/target/arrowhead-certificate-authority-4.2.0.jar /root/arrowhead-setup/jars/
cp /root/core-spring-java/eventhandler/target/arrowhead-eventhandler-4.2.0.jar /root/arrowhead-setup/jars/
cp /root/core-spring-java/gatekeeper/target/arrowhead-gatekeeper-4.2.0.jar /root/arrowhead-setup/jars/
cp /root/core-spring-java/gateway/target/arrowhead-gateway-4.2.0.jar /root/arrowhead-setup/jars/
cp /root/core-spring-java/orchestrator/target/arrowhead-orchestrator-4.2.0.jar /root/arrowhead-setup/jars/
cp /root/core-spring-java/serviceregistry/target/arrowhead-serviceregistry-4.2.0.jar /root/arrowhead-setup/jars/
```

## <a name="installation"></a>Docker installation on Raspberry Pi and Ubuntu



Installation of the Docker Desktop for Windows and MacOs can be found [here](https://www.docker.com/products/docker-desktop)

### <a name="DoR"></a>Install Docker on Raspbeery Pi

### <a name="DoU"></a>Install Docker on Ubuntu

Docker installation for Ubuntu 20 and Raspberry Pi can be found [here](https://docs.docker.com/engine/install/ubuntu/)

Here is sample installation steps on Ubuntu20.04

```
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker
```
Executing the Docker Command Without Sudo (Optional)

```
sudo usermod -aG docker ${USER}
su - ${USER}
id -nG
sudo usermod -aG docker username
```



Docker-compose installation on Ubuntu20.04

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```


## <a name="cert"></a>Certification

Certificates are needed for HTTPS communication between the Arrowhead core and client systems.

Insert your information
Edit the script given at `./certs/scripts/create_p12_certs.sh` with your favorite text editor and insert the infomation about your infrastructure for the below fields:

- COMPANY
Your company name
- CLOUD
Your Arrowhead cloud name
- COMMON_SAN
Append here your dns and/or ip address of Arrowhead core systems host
Append dns and/or ip addresses you plan to decribe your client systems with
- YOUR CLIENTS
Append to the list of create_consumer_system_keystore your desired client system names
Also remember to change Arrowhead core properties in `./core_system_config` folder to match:

- `server.ssl.key-alias`
PKCS #12 password
You may set your own password to the P12 files before creating the certificates.
By default the password is 123456.

Edit the script `./certs/scripts/lib_certs.sh` with your desired default password for the .p12 certificate stores.

Also remember to set the same password to Arrowhead core properties in `./core_system_config` folder:

- `server.ssl.key-store-password`
- `server.ssl.key-password`
- `server.ssl.trust-store-password`
Run certificate generation script

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


### <a name="cfl"></a>Create certificates for localclouds
If you are using your home computer for arrowhead localcloud than you should point you certificate name as localhost and ip address 127.0.0.1 in the `./certs/scripts/create_p12_certs.sh` file

### <a name="cfg"></a>Create certificates for Globalclouds (DNS or StaticIP based)

If you are using your home computer for arrowhead localcloud than you should point you certificate name as `YOUR_DNS_NAME` and ip address `YOUR_STATIC_IP` in the `./certs/scripts/create_p12_certs.sh` file

## <a name="checklist"></a>The checklist before starting Installation

- Is the jar file generated from source?
- Jar giles moved to destionation folder?
- Are the certificates generated?

## <a name="ilc"></a>Up and Running Arrowhead Localcloud

Ensure you have the necessary .p12 certificates and truststore for the core systems in `./certs` folder.

Change `MYSQL_ROOT_PASSWORD` within docker-compose.yml.

Once Docker is up and running you need to create a volume for the MariaDB database:
```
docker volume create --name=mysql
```
Than run
```
docker-compose -f docker-compose.yml -f docker-compose.jars.yml -f docker-compose.mgmt_tool.yml up --build
```
You can shutdown the system via pressing `CTRL+C `to interrupt.
To clean up any remaining resources run:
```
docker-compose down
```

### <a name="miml"></a>Install Mimosa CBM

After the Mariadb is up and running than you should run the sql files on mariadb.

### <a name="lcgui"></a>Connect Spring UI's over Web Browsers on Windows and MAC

Download and install sysop.p12 certificate to you computer. 
Fow windows, double click on the certificate than install the certificate as Personal certificate on your computer. 
For MacOS

### <a name="tyil"></a>Test Your Installation

## <a name="igc"></a>Install Globalcloud

### <a name="durg"></a>Get the Dockers up and running

### <a name="mimg"></a>Install Mimosa CBM

### <a name="gcgui"></a>Connect Spring UI's over Web Browsers on Windows and MAC

### <a name="tyi"></a>Test Your Installation

## <a name="vig"></a>Video Installation Guides

