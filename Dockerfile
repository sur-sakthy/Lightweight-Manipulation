FROM centos:7
USER root

# update and install required packages
RUN yum update -y
RUN yum install python3-pip -y
RUN pip3 install --upgrade pip

RUN mkdir -p /lightweight

# install the required dependencies for the project
WORKDIR /lightweight
COPY requirements.txt .
RUN pip3 install -r requirements.txt

CMD python code/pretrain_DAMSM.py --cfg cfg/DAMSM/bird.yml --gpu 0