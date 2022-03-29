#!/bin/bash
ip rule add from 10.20.0.0/24 table ss_wg2
ip rule add from 10.10.0.0/24 table ss
ip route add default via 10.20.0.2 table ss_wg2
ip route add default via 10.10.0.2 table ss
wg set wg1 peer +g7pryg3Jm7zjg9cCE2++ydarzQzyoaSnwLDNWlkxGc= allowed-ips 0.0.0.0/0
wg set wg2 peer +g7pryg3Jm7zjg9cCE2++ydarzQzyoaSnwLDNWlkxGc= allowed-ips 0.0.0.0/0
