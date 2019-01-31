#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 'ECR ID' --region ap-northeast-1)

if [ `docker images | grep 'ECR Repo' | wc -l`  = 1 ]
then
        docker rmi 'ECR ID'.dkr.ecr.ap-northeast-1.amazonaws.com/'ECR Repo'
        docker pull 'ECR ID'.dkr.ecr.ap-northeast-1.amazonaws.com/'ECR Repo':latest
else
        docker pull 'ECR ID'.dkr.ecr.ap-northeast-1.amazonaws.com/'ECR Repo':latest
fi
