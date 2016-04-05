### Dockerをchefにてプロビする方法

- Dockerfileにてchefの内容をビルドする

`$ docker build -t centos/chef .`

- ビルドが完了したらイメージを指定して起動する

`$ docker run -i -t centos/chef /bin/bash`
