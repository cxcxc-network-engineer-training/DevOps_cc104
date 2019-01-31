#!/bin/bash
docker run -p 80:5000 --name 'Container Name' -d 'ECR ID'.dkr.ecr.ap-northeast-1.amazonaws.com/'ECR Repo':latest
