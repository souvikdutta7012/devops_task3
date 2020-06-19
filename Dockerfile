FROM centos:7
RUN yum install wget -y
RUN yum install git -y
RUN yum install sudo -y
RUN yum install python36 -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install java -y
RUN yum install jenkins -y
RUN echo "jenkins ALL=(ALL) NOPASSWD" >> /etc/sudoers

CMD java -jar /usr/lib/jenkins/jenkins.war && /bin/bash 
