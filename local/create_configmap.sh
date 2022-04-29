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

#    volumes:
#      - ../hello-observability/load-generator.sh:/tmp/load-generator.sh

kubectl create configmap -o yaml --dry-run=client \
    load-generator-sh \
    --from-file ../hello-observability/load-generator.sh \
    > load-generator-sh-configmap.yaml

kubectl create configmap -o yaml --dry-run=client \
    loki-yaml \
    --from-file config/loki-config.yaml \
    > loki-yaml-configmap.yaml

kubectl create configmap -o yaml --dry-run=client \
    prometheus-yaml \
    --from-file config/prometheus.yaml \
    > prometheus-yaml-configmap.yaml
