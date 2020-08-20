# docker_trial
## basic steps
1. building image
> \>docker build -t \<image name\> \<path to Dockerfile\>
2. create and run container from image. 
> \>docker run --rm -it \<image name\>

## docker network
You need to create original network if it is necessary to resolve naming.  
see the link below  
[Dockerのブリッジ・ネットワークでのコンテナ間名前解決がどうなっているのか見てみた](https://qiita.com/tsukapah/items/677b1f5c89dcbe520344)

## docker volume
see the link below  
[Docker、ボリューム(Volume)について真面目に調べた](https://qiita.com/gounx2/items/23b0dc8b8b95cc629f32)

## rocketchat, mongodb, hubot with docker
see the link below  
[Rocketchat Official](https://rocket.chat/docs/installation/docker-containers/docker-compose/)  
[Github yml](https://github.com/RocketChat/Rocket.Chat/blob/develop/docker-compose.yml)

## Tips
- should not use \-d option during debug  
It's to see console log.

- management of containers  
use portainer  
[Portainerでらくらく！GUI docker](https://bbsakura.github.io/posts/begginers-guide-to-gui-docker/)

## troubleshooting
- \--smallfile: removed mongo 4.2
