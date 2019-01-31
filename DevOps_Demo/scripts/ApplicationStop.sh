#!/bin/bash
if [ `docker ps | grep 'container name' | wc -l`  = 1 ]
then
        docker stop 'container name'
        docker rm  'container name'
fi
