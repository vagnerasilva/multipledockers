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

docker build -t julia-container .


for i in $(ls -d */); 
    do echo ${i}
    VALUE2="${i}/Dockerfile ."
    VALUE1="container-${i}"
    $(echo $IN | tr ";" "\n")
    echo ${VALUE2}
    echo ${VALUE1}
    docker build -t ${VALUE1} -f ${VALUE2} ;
    #docker images
done


for i in $(ls -d */); 
    do echo ${i}
    VALUE2="${i}/Dockerfile ."
    VALUE1="container-${i}"
    $(echo $IN | tr ";" "\n")
    echo ${VALUE2}
    echo ${VALUE1}
    #docker build -t ${VALUE1} -f ${VALUE2} ;
    #docker images
done