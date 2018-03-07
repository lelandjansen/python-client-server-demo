# python-client-server-demo
Client-server demo application using Python (Flask) and Docker.

The client makes a HTTP `get` request to the server who returns `Hello, World!`
if everything is running properly.

Tested on a client + server both running Ubuntu 16.04.

## Requirements
- Server (with an accessible IP address and port 5000 open)
- Client computer
- Docker on both the client and server
  ([good installation tutorial][install-docker-tutorial]) 

## Setup
1. Modify the `IP_ADDRESS` in `client/app/client.py` to match the IP address of
   your server
2. If you wish to change the port, modify `PORT` in `client/app/client.py`,
  `PORT` in `server/app/server.py`, and `--publish port:port` in
  `server/run-server.sh` (in production we should share a common file/variable)

**ECE 422 course tip:** If using OpenStack to manage your server, make sure a
*Floating IP* address is associated with your instance. Additionally, make sure
port 5000 (or whichever one your choose) is open. In OpenStack's web UI, go to
`Network > Security Groups` and create a new security group (or modify the
default). Don't forget to edit the security groups of your instance to match the
security group you just created.

## Run application
```console
# Server
$ cd server
$ ./build-server.sh
$ ./run-server.sh

# Client 
$ cd client
$ ./build-client.sh
$ ./run-client.sh
Hello, World!

# Kill server
$ docker kill <id>
```

[install-docker-tutorial]: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
