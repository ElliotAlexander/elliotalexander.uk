---
title: "Passive Network Analysis"
date: 2020-07-05T15:25:24+01:00
weight: 4 
external_link: "" 
resources:
    - src: screenshot.png
---

As a part of my fourth year Group Design Project, myself and a team of four others designed and implemented a passive network tap capable of logging analytics, client and network information, active port scanning and basic intrusion detection. This was build with a Java backend (build ontop of [PCAP4J](https://github.com/kaitoy/pcap4j)), with a ReactJS frontend.  This whole setup was deployed and build with a series of microservices and containers, making it easy to develop on and deploy the project as required.

The project was extremely large, and capable of detecting (among others): 
- Listing all DNS queries made on a network
- Geolocating (in real time) all external connections on a network.
- Tracking the volume of up/down traffic on a per device basis.
- Alterting to new devices on a network, as well as tracking ip address changes.
- Monitoring the protocol and port of all external connections. 
- Identifying the Manufacturer/Type of device based on MAC Address.
- Tracking the percentage of HTTP/HTTPS traffic on a per-device basis.
- Identifying TOR traffic in real time based on a constantly updating list of known exit nodes.

The project was highly successful, with a extremely happy industry customer, achieving a upper first-class overall classification.
