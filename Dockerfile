FROM centos:centos6

ENV CHEFHOME /root/chef_docker
ADD chef_docker /root/chef_docker

RUN curl -L http://www.opscode.com/chef/install.sh | bash
RUN cd ${CHEFHOME} && chef-solo -c ${CHEFHOME}/solo.rb -j ${CHEFHOME}/nodes/docker_nginx.json
