kubectl create configmap -o yaml --dry-run=client \
    hello-observability-log \
    --from-file logs/hello-observability.log \
    > hello-observability-log-configmap.yaml


kubectl create configmap -o yaml --dry-run=client \
    access-log \
    --from-file logs/access_log.log \
    > access-log-configmap.yaml



kubectl create configmap -o yaml --dry-run=client \
    agent-yaml \
    --from-file config/agent.yaml \
    > agent-yaml-configmap.yaml
