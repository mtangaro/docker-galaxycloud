docker-galaxycloud
==================

Build docker image:

```
$ docker build -t galaxycloud --no-cache .
```

Run docker image:

```
$ docker run -d -t -i -p 80:80 -p 21:21 galaxycloud /bin/bash
```
