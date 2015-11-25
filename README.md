# docker_ipam
phpIPAM IP Address Management [v1.1] rev010 dockerized.
### Elements###
* apache2
* php5 with required modules
* mysql-5.5 (no root password)
### Run ###
```
docker run -dh ipam --name ipam -p 80:80 ipam
```
### Build ###
```
git clone https://github.com/csabakollar/docker_ipam /tmp/docker_ipam
docker build --rm -t ipam /tmp/docker_ipam
docker run -dh ipam --name ipam -p 80:80 ipam
```
