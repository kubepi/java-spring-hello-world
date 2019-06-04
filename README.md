
```
Remember to rebuild and do a dockerPrepare from gradle before running the following in Docker Quick Start Terminal

cd /c/git/java-spring-hello-world

docker login
docker build -t bingbo/kubepi-helloworld:0.1.5 .
docker push bingbo/kubepi-helloworld:0.1.5
```
