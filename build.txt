#!/bin/bash
REGISTRY="vagnerasilva"
VERSION="latest"


for i in $(ls -d */); 
    do 
    #echo ${i:0:-1} # Removendo "/" da ultima posicao da string
    echo "## START ##"
    echo " "
    
    VALUE2="${i:0:-1}/Dockerfile ."   # criando nome da imagem a ser buildada
    VALUE1="container-${i:0:-1}"      # criando nome do container que sera utilizado  
    
    echo ${VALUE2}
    echo ${VALUE1}
    docker build -t ${VALUE1} -f ${VALUE2}   # Realizando build dos containers com o nome das pastas e dockerfiles em cada uma delas 
    #echo ${VALUE1} ${REGISTRY}/${VALUE1}:${VERSION}
    echo " "
    echo "## Build Done ##"
    docker tag ${VALUE1} ${REGISTRY}/${VALUE1}:${VERSION} # colocando tag para subir no dockerhub
    echo " "
    echo "## Tag Done ##"
    sleep 1
    docker push ${REGISTRY}/${VALUE1}:${VERSION}         # subindo no dockerhub   
    #docker images
    echo " "
    echo " "
    echo "## Docker push Done ##"
    echo " "
    echo " "
    sleep 1;
done

echo 'Done'
docker images



