#Hackathon XI at Radialpoint, I'm going through this walkthrough and code, and integrating others, to enable a proof of concept for:

- Kubernetes use at rp, including resource clusters
- Salt support of autoscaling@aws
- kubernetes-supported docker images

  export INSTANCE_PREFIX=k8s
  export AWS_S3_BUCKET=radialpoint-k8s-artifacts
  export AWS_S3_REGION=us-east-1
  export KUBE_AWS_ZONE=us-east-1c
  export AWS_SSH_KEY=/home/ericr/.ssh/rsa
  export KUBE_AWS_ZONE=us-east-1e
  export KUBERNETES_PROVIDER=aws; curl -sS https://get.k8s.io | bash
  
  export MASTER_SIZE=t2.large
  export NODE_SIZE=t2.large
  bash ./kube-up.sh 
  kubectl cluster-info

This returns
Kubernetes master is running at https://52.0.84.8
Elasticsearch is running at https://52.0.84.8/api/v1/proxy/namespaces/kube-system/services/elasticsearch-logging
Heapster is running at https://52.0.84.8/api/v1/proxy/namespaces/kube-system/services/heapster
Kibana is running at https://52.0.84.8/api/v1/proxy/namespaces/kube-system/services/kibana-logging
KubeDNS is running at https://52.0.84.8/api/v1/proxy/namespaces/kube-system/services/kube-dns
kubernetes-dashboard is running at https://52.0.84.8/api/v1/proxy/namespaces/kube-system/services/kubernetes-dashboard
Grafana is running at https://52.0.84.8/api/v1/proxy/namespaces/kube-system/services/monitoring-grafana
InfluxDB is running at https://52.0.84.8/api/v1/proxy/namespaces/kube-system/services/monitoring-influxdb
