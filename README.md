# arrowhead-setup

This project was created from scripts that can be found found in [Arrowhead framework core project](https://github.com/arrowhead-f/core-java-spring).
We divided the Arrowhead installation into two subgroups;

- Localclouds (install arrowhead services that it will run locally on your computer and Raspberry Pi)
- Globalclouds (install arrowhead services that it will be reachable over a static ip or a DNS name)

The main purpose of this division is pointing how the Arrowhead installations are differ between local and static ip or DNS especially on installation, certification, accessing management ui. All the installations depends on the docker. 


# Table of Contents
- [The System Requirements](#TheSystemRequirements)
- [Docker installation on Windows, Raspberry and Linux](#installation)
  - [Install Docker on Windows](#DoC)
  - [Install Docker on Raspbeery Pi](#DoR)
  - [Install Docker on Ubuntu](#DoU)
- [Certification](#cert)
  - [Create certificates for localclouds](#cfl)
  - [Create certificates for Globalclouds (DNS or StaticIP based)](#cfg)
- [The checklist before starting Installation](#checklist)
- [Install Localclouds](#ilc)
  - [Get the Dockers up and running](#durl)
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



## <a name="installation"></a>Docker installation on Windows, Raspberry and Linux

Docker installation for Ubuntu 20 and Raspberry Pi can be found [here](https://docs.docker.com/engine/install/ubuntu/)
Installation of the Docker Desktop for Windows and MacOs can be found [here](https://www.docker.com/products/docker-desktop)

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
```

### <a name="DoC"></a>Install Docker on Windows

### <a name="DoR"></a>Install Docker on Raspbeery Pi

### <a name="DoU"></a>Install Docker on Ubuntu


## <a name="cert"></a>Certification

### <a name="cfl"></a>Create certificates for localclouds

### <a name="cfg"></a>Create certificates for Globalclouds (DNS or StaticIP based)

## <a name="checklist"></a>The checklist before starting Installation

## <a name="ilc"></a>Install Localclouds

### <a name="durl"></a>Get the Dockers up and running

### <a name="miml"></a>Install Mimosa CBM

### <a name="lcgui"></a>Connect Spring UI's over Web Browsers on Windows and MAC

### <a name="tyil"></a>Test Your Installation

## <a name="igc"></a>Install Globalcloud

### <a name="durg"></a>Get the Dockers up and running

### <a name="mimg"></a>Install Mimosa CBM

### <a name="gcgui"></a>Connect Spring UI's over Web Browsers on Windows and MAC

### <a name="tyi"></a>Test Your Installation

## <a name="vig"></a>Video Installation Guides

