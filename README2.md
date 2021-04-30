

## Instalation steps
docker-compose -f docker-compose-non-dev.yml
### installing Athena
docker-compose exec --user root superset pip install "PyAthena>1.2.0"

### installing firefox and geckodriver
docker ps // get the id of the superset-worker container
// move inside the container and execute the following command
docker exec -it containerId sh
sh /app/docker/install_dependencies.sh
exit

### restart
docker-compose restart
