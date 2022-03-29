#!/bin/bash
#SSH - Gonçalo
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 2021 -j DNAT --to-destination 10.20.0.3:22
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 2022 -j DNAT --to-destination 10.20.0.4:2221
#SSH - Matias
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 2023 -j DNAT --to-destination 10.10.0.3:22

#HTTP/HTTPS
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 80 -j DNAT --to-destination 10.20.0.4:80
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 443 -j DNAT --to-destination 10.20.0.4:443

#EMAIL
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 25 -j DNAT --to-destination 10.20.0.3:25
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 110 -j DNAT --to-destination 10.20.0.3:110
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 587 -j DNAT --to-destination 10.20.0.3:587
iptables -t nat -A PREROUTING -i enp0s3 -p tcp -m tcp --dport 995 -j DNAT --to-destination 10.20.0.3:995
