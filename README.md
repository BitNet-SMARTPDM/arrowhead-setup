# arrowhead-setup

This project was created from scripts that can be found found in [Arrowhead framework core project](https://github.com/arrowhead-f/core-java-spring) and [VTT-OM](https://github.com/VTT-OM/arrowhead-setup)

We divided the Arrowhead installation into two subgroups;
⋅⋅* Localclouds (install arrowhead services that it will run locally on your computer and Raspberry Pi)
⋅⋅* Globalclouds (install arrowhead services that it will be reachable over a static ip or a DNS name)

The main purpose of this division is pointing how the Arrowhead installations are differ between local and static ip or DNS especially on installation, certification, accessing management ui. All the installations depends on the docker. 

- [Heading](#heading)
  * [Sub-heading](#sub-heading)
    + [Sub-sub-heading](#sub-sub-heading)
- [Heading](#heading-1)
  * [Sub-heading](#sub-heading-1)
    + [Sub-sub-heading](#sub-sub-heading-1)
- [Heading](#heading-2)
  * [Sub-heading](#sub-heading-2)
    + [Sub-sub-heading](#sub-sub-heading-2)


# Table of Contents
- [The System Requirements](#TheSystemRequirements)
- Docker installation on Windows, Raspberry and Linux
  - Install Docker on Windows
  - Install Docker on Raspbeery Pi
  - Install Docker on Ubuntu
- Certification
  - Create certificates for localclouds
  - Create certificates for Globalclouds (DNS or StaticIP based)
- The checklist before starting Installation
- Install Localclouds
  - Get the Dockers up and running
  - Install Mimosa CBM
  - Connect Spring UI's over Web Browsers on Windows and MAC
  - Test Your Installation
- Install Globalcloud
  - Get the Dockers up and running
  - Install Mimosa CBM
  - Connect Spring UI's over Web Browsers on Windows and MAC
  - Test Your Installation
## The System Requirements
