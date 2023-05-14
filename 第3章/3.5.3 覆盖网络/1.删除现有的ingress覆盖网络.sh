docker network rm ingress

# WARNING! Before removing the routing-mesh network, make sure all the nodes
# in your swarm run the same docker engine version. Otherwise, removal may not
# be effective and functionality of newly created ingress networks will be
# impaired.
# Are you sure you want to continue? [y/N]

docker network create \
  --driver overlay \
  --ingress \
  --subnet=10.11.0.0/16 \
  --gateway=10.11.0.2 \
  --opt com.docker.network.driver.mtu=1200 \
  my-ingress

