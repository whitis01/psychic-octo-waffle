# psychic-octo-waffle
This is a repo for the coding challenge presented by Metabolon.


## Instructions To Build/Run
This project runs with Docker. There are two pieces the user will need to run the program. The first is the <b>[docker-machine](https://docs.docker.com/machine/install-machine/). NOTE: If you are running on a linux system, you will not need to do this as the daemon is automatically supported. To start up a virtualization program as well, such as VirtualBox, VMware, Parallels, etc. This program was built and created using Parallels, but any virtalization software should do.
  
  $ docker-machine create default
  
            or
  
  $ docker-machine create --driver=parallels default
  
  The follow the instructions to make sure the daemon can be connected to.

The second piece is the docker-compose script. First install [docker](https://www.docker.com/products/docker-desktop) and then [docker-compose](https://docs.docker.com/compose/install/). The docker-compose will spin up a daemon and run the docker-compose.yml, installing the requisite images.

## Explanation of Process
