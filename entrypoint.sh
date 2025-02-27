#!/bin/bash

read -p "Enter the Sysdig Region (us1, us2, us3, us4, eu1, au1, me2): " region

# Choose the correct URL based on region chosen
case "$region" in
  us1) url="https://app.sysdigcloud.com/prometheus";;
  us2) url="https://us2.app.sysdig.com/prometheus";;
  us3) url="https://app.us3.sysdig.com/prometheus";;
  us4) url="https://app.us4.sysdig.com/prometheus";;
  eu1) url="https://eu1.app.sysdig.com/prometheus";;
  au1) url="https://app.au1.sysdig.com/prometheus";;
  me2) url="https://app.me2.sysdig.com/prometheus";;  
  *) echo "Invalid region. Please provide a valid region (us1, us2, us3, us4, eu1, au1, me2)."; exit 1;;
esac

echo "Enter the API token:"
# read -s token
token=""

while IFS= read -r -s -n 1 char; do
    if [[ $char == $'\0' ]]; then
        break
    fi
    token+="$char"
    echo -n "*"
done
echo


# Update the datasource YAML with the URL and token
sed -i "s#<URL_HERE>#$url#g" /etc/grafana/provisioning/datasources/datasource.yaml
sed -i "s#<TOKEN_HERE>#$token#g" /etc/grafana/provisioning/datasources/datasource.yaml

# Start Grafana
/run.sh
