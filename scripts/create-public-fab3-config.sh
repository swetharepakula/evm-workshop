CLUSTER_IP=$1

sed -e "s/<cluster-ip>/${CLUSTER_IP}/g" ${FABPROXY_CONFIG} > temp.yaml
mv temp.yaml ${FABPROXY_CONFIG}
