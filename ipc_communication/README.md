Terminal_c -> client: "message"  
client -> server : "message"  
server -> Terminal_s : "message"  

# steps
## POSIX IPC
### sender
docker run -it --rm --name sender_container -v `pwd`:/mnt --ipc=container:receiver_container ubuntu:18.04 /bin/bash

### receiver
docker run -it --rm --name receiver_container -v `pwd`:/mnt --ipc=host ubuntu:18.04 /bin/bash

## systemV IPC
docker run -it --rm --name receiver_container -v `pwd`:/mnt --ipc=host ubuntu:18.04 /bin/bash
(common in both sender and receiver)