# drone ruby base
FROM  ubuntu
MAINTAINER Kayvan Sylvan <kayvansylvan@gmail.com>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install curl git -y

RUN curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -P chefdk
RUN locale-gen en_US.UTF-8
