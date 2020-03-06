docker rm ftps
docker build . -t img 
docker run -it -p 20-21:20-21 -p 20000-20299:20000-20299 --name ftps img:latest