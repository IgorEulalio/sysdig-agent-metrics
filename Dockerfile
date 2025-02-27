FROM grafana/grafana:latest
COPY dashboard-v2.json /etc/grafana/provisioning/dashboards/
COPY dashboard-cdr.json /etc/grafana/provisioning/dashboards/
COPY dashboard-agent-metrics.json /etc/grafana/provisioning/dashboards/
COPY dashboard-cluster-shield-custom-metrics.json /etc/grafana/provisioning/dashboards/

COPY dashboard.yaml /etc/grafana/provisioning/dashboards/
COPY datasource.yaml /etc/grafana/provisioning/datasources/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
