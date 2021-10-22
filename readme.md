## deploy de varias imagens ao mesmo tempo

A ideia é fazer o deploy de 4 imagens


Dentro da pasta 

docker build -t img3 .

docker build -t ./img3 -f img3 .

docker build -t img2 -f img2 .

docker build -t node-app -f docker/Dockerfile .


docker build -t img1 -f img1/Dockerfile .
docker build -t img2 -f img2/Dockerfile .
docker build -t img3 -f img3/Dockerfile .

