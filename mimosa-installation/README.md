What is MIMOSA?
MIMOSA is a 501 (c) 6 not-for-profit industry trade association dedicated to developing and encouraging the adoption of open, 
supplier-neutral IT and IM standards enabling digital physical asset lifecycle management spanning plants, platforms and facilities.  
MIMOSA standards support key functional and interoperability requirements for Critical Infrastructure Management on a cross-sector basis, 
addressing the highly heterogeneous and interdependent nature of critical infrastructure.  MIMOSA standards and collaboratively developed specifications 
enable Digital Twins to be defined and maintained on a supplier-neutral basis, while also using those Digital Twins to provide Context for Big Data 
(IIOT and other sensor-related data) and Analytics.  In cooperation with other associations, these workstreams provide a pragmatic basis for 
Industrial Digital Transformation based on the Open Industrial Interoperability Ecosystem (OIIE). Explore the Resource Guide for an overview MIMOSA standards, 
specifications, and initiatives.

You can find furhter details at https://www.mimosa.org/

In this document, the mimosa installation on the MariaDB will demonstrated. 

If you will install Mimosa to the same server as where you installed arrowhead, than you should change DB port in the docker-compose.yml

If you will install Mimosa to the another server, than you can follow docker installation from https://github.com/BitNet-SMARTPDM/arrowhead-setup

First of all the MariaDB container get up and running, copy the sql procedures from server to container

with
###########################################################################
docker cp Step1_MariaDB.sql contid:/root/
docker cp Step2_MariaDB.sql contid:/root/
docker cp Step3_MariaDB.sql contid:/root/

than connect container and login to mariadb via mysql -u root -p 

create database mimosa_db;

use mimosa_db;

source /root/Step1_MariaDB.sql

source /root/Step2_MariaDB.sql

source /root/Step3_MariaDB.sql

#########################################################################################

Now the MIMOSA is installed your DB.


First you get the dockers than you can follow video given at the https://www.youtube.com/watch?v=oPKH3jOX8F0
