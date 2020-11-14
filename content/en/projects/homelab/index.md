---
title: "Homelab" # Title of your project
date: 2020-08-13T23:52:08+01:00
weight: 2
external_link: "" # Optional external link instead of modal
resources:
    - src: homelab.png
      params:
          weight: -100 # Optional weighting for a specific image in this project folder
---
My homelab is an environment which allows me to build, develop, learn and experiment with new tools, software and hardware in a safe and controller environment. 


I've been invlolved with homelabbing for two years now, and in that time have learnt a wealth about networking, virtualization, containerization, Linux (both as a user, and sysadmin), among a host of other things. My homelab currently consists of: 
* **FreeIPA** for LDAP/Radius authentication. 
* **Bind** as a primary nameserver.
* **[Cobbler](https://github.com/cobbler/cobbler)** as a secondary nameserver, as well as DHCP/PXE server.
* **Proxmox**, as a primary virtualization host. 
* **Grafana/Telegraf/InfluxDB** - I've been using this stack reliably for years, and plan to foray in ELK in the future. 
* **Pfsense / Cisco IOS** - I run a set of cisco catalyst/small business switches, as well as a virtualized pfsense host, and a modded watchguard XTM 525 as a failover.
* **Puppet** - I'd consider myself still a newcomer to Puppet, but I'm quickly (and excitedly) exploring it's powers.
* **NGINX** - I use NGINX as a reverse proxy, to proxy specific access to services from outside my home network.
* Other smaller services: MariaDB, Gitlab, OpenWiki, Nextcloud, etc.

I generally use **CentOS 7/8** or docker for the majority of my services.

My homelab is in a constant state of adaptation, with new technologies, services and tools being deployed all the time. It's been an invaluable source of learning, particularlly for aspects of networking, system administration, virtualization, docker and Linux.
