docker-galaxycloud
==================
Run your docker with:
```
docker run -d -p 80:80 -p 21:21 mtangaro/docker-galaxycloud
```

Build local docker image
------------------------

```
$ docker build -t galaxycloud --no-cache .
```

Run docker image:

```
$ docker run -d -t -i -p 80:80 -p 21:21 galaxycloud
```

Default user
------------
To access Galaxy the default administrator user is:
```
GALAXY_ADMIN_EMAIL: "admin@elixir-italy.org"
GALAXY_ADMIN_USERNAME: "admin"
```

Galaxy version
--------------
Current Galaxy version:
```
GALAXY_VERSION: "release_17.05"
```
