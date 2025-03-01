1. download docker image of ubuntu:22.04
```
docker pull ubuntu:22.04
```
2. re-build docker image based on centos7.
```
docker build --rm -t ubuntu-systemd .
```
3. create container.
- needs privileged
```
docker run -it --rm --privileged -v /run/systemd/system:/run/systemd/system -v /bin/systemctl:/bin/systemctl -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket -it ubuntu-systemd bash

```
openvswitch-switch-dpdk
