![Alt Text](https://github.com/yhidetoshi/Pictures/raw/master/chef_docker/chef-docker-icon.png)

### Dockerをchefにてプロビする方法

[Dockerfileにchefを実行してビルドするように記述する]
```
FROM centos:centos6

ENV CHEFHOME /root/chef_docker
ADD chef_docker /root/chef_docker

RUN curl -L http://www.opscode.com/chef/install.sh | bash
RUN cd ${CHEFHOME} && chef-solo -c ${CHEFHOME}/solo.rb -j ${CHEFHOME}/nodes/docker_nginx.json
```

- Dockerfileにてchefの内容をビルドする

`$ docker build -t centos/chef .`

- ビルドが完了したらイメージを指定して起動する

`$ docker run -i -t centos/chef /bin/bash`

