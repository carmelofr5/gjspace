BEGIN

apt-get update
apt-get install docker.io -y
docker pull ubuntu:18.04
docker run -d -t --name TEST ubuntu:18.04
docker ps
docker exec -it TEST bash
 docker run -d -t -p 80:80 --name TEST ubuntu:18.04
docker stop TEST
docker start TEST
docker stats

docker cp FILE TEST:/

END
