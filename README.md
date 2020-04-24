# docker_trial
## basic steps
1. building image
> \>docker build -t \<image name\> \<path to Dockerfile\>
2. create and run container from image. 
> \>docker run --rm -it \<image name\>

## rocketchat, mongodb, hubot with docker
see the link below  
[Rocketchat Official](https://rocket.chat/docs/installation/docker-containers/docker-compose/)  
[Github yml](https://github.com/RocketChat/Rocket.Chat/blob/develop/docker-compose.yml)

## Tips
- should not use \-d option during debug  
It's to see console log.

## troubleshooting
- \--smallfile: removed mongo 4.2
