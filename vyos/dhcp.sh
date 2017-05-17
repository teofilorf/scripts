set interfaces ethernet eth1 address dhcp 
set interfaces ethernet eth2 adddess 200.10.0.1/29
set interfaces ethernet eth3 address 192.168.99.1/24
set nat source rule 1000 outbound-interface eth1
set nat source rule 1000 translation address masquerade 
set service dhcp-server shared-network-name 'LAN' authoritative enable
set service dhcp-server shared-network-name 'LAN' subnet '192.168.99.0/24' start '192.168.99.100' stop '192.168.99.254'
set service dhcp-server shared-network-name 'LAN' subnet '192.168.99.0/24' default-router '192.168.99.1'
set service dhcp-server shared-network-name 'LAN' subnet '192.168.99.0/24' dns-server '10.0.2.3'
set service dhcp-server shared-network-name 'LAN' subnet '192.168.99.0/24' domain-name 'internal-net'
set service dhcp-server shared-network-name 'LAN' subnet '192.168.99.0/24' lease 86400

