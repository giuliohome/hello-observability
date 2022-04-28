kubectl create configmap -o yaml --dry-run=client \
    hello-observability-log \
    --from-file logs/hello-observability.log \
    > hello-observability-log-configmap.yaml


kubectl create configmap -o yaml --dry-run=client \
    access-log \
    --from-file logs/access_log.log \
    > access-log-configmap.yaml


kubectl create configmap -o yaml --dry-run=client \
    grafana-datasources-yaml \
    --from-file config/grafana-datasources.yaml \
    > grafana-datasources-yaml-configmap.yaml

