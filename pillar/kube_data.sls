cluster_info:
  domainname: ec2.internal
  com_protocol: http
  api_secure_port: 6443
  api_insecure_port: 8080
  hyperkube_version: v1.1.7
  apiserver: http://10.111.1.201:8080
kube_pods:
  skydns:
    portalip: 10.111.1.201
    dnsname: ec2.internal
auth_logins:
  ericr:
    uid: 1
    password: ThisSecurePasswordForYou
  admin:
    uid: 2
    password: ThisSecurePasswordForYou
auth_tokens:
  tokenjoin:
    uid: 1
    username: totenkopf
kube_nodes:
  ip-10-111-1-201:
    type: master
    ipaddress: 10.111.1.201
    docker0_bip: 172.10.10.1
    docker0_mask: /27
    portal_net: 10.111.1.0/24
  ip-10-111-1-55:
    type: minion
    ipaddress: 10.111.1.55
    docker0_bip: 172.10.10.33
    docker0_mask: /27
  ip-10-111-1-69:
    type: minion
    ipaddress: 10.111.1.69
    docker0_bip: 172.10.10.65
    docker0_mask: /27
  ip-10-111-1-70:
    type: minion
    ipaddress: 10.111.1.70
    docker0_bip: 172.10.10.97
    docker0_mask: /27

