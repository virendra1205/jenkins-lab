FROM centos

RUN yum install -y openssh-server bzip2 mysql epel-release python3-pip && \
    pip3 install awscli

RUN adduser vyadav && \
    echo "vyadav:Arush@123" | chpasswd && \
    mkdir /home/vyadav/.ssh && \
    chmod 700 /home/vyadav/.ssh 

ADD jenkins-remote-key.pub /home/vyadav/.ssh/authorized_keys

RUN chown vyadav.vyadav -R /home/vyadav/.ssh && \
    chmod 600 /home/vyadav/.ssh/authorized_keys && \
    rm -f /run/nologin 

EXPOSE 22

RUN ssh-keygen -A

CMD /usr/sbin/sshd -D
