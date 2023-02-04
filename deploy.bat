@echo off

rem Stop the running container
docker stop DashyContainer

rem Remove the old container
docker rm DashyContainer

rem Build dashy image
docker build -t dashy .

rem Start the new container with updated image
docker run -d --name DashyContainer -p 6060:80 dashy

echo Docker image update complete!
pause