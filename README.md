# docker-galaxycloud

Build docker image:
sudo docker build -t galaxy-test .

Run docker image:
sudo docker run -d -t -i -p 80:80 -p 21:21 galaxy-test /bin/bash
