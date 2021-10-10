# run as general user
-u <username>

# to attach one more other network interface
# -> connect other container belonging another network
docker network create --driver bridge <network name> --subnet=<192.168.7.0/24>
docker network connect <network name> <container name>

