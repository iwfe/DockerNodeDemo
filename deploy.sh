docker build -t docker-node-demo:beta .
docker ps -a -q -f name=DockerNodeDemoBeta | xargs -I {} docker stop {}
docker ps -a -q -f name=DockerNodeDemoBeta | xargs -I {} docker rm {}
docker run -d -p 4000:4000 --name DockerNodeDemoBeta docker-node-demo:beta