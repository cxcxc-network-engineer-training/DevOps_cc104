set -ex
#set registry
#USERNAME= ECR 的位置
USERNAME='ECR ID'.dkr.ecr.ap-northeast-1.amazonaws.com
# image name
#IMAGE= Repo name
IMAGE=
docker build -t $USERNAME/$IMAGE:latest .
version=`cat VERSION`
echo "version: $version"
docker tag $USERNAME/$IMAGE:latest $USERNAME/$IMAGE:$version
docker push $USERNAME/$IMAGE:$version

