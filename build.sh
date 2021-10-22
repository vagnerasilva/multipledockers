#!/bin/bash
# declare STRING variable
STRING="Hello World"
#print variable on a screen
echo $STRING

for i in $(ls -d */); 
    do echo ${i}
    #docker build -t ${i} -f ${i}/Dockerfile . ;
done
docker build -t img1 -f img1/Dockerfile .
docker build -t img2 -f img2/Dockerfile .
docker build -t img3 -f img3/Dockerfile .

echo 'Done'
docker images